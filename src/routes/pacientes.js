const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');
const Swal = require('sweetalert2');
const { calcEdad } = require('../lib/helpers');

router.get('/check_paciente', isLoggedIn, async (req, res) => {
    res.render('pacientes/check_paciente');
});

router.post('/check_paciente', isLoggedIn, async (req,res) => {
    const { num_docu } = req.body
    console.log(num_docu)
    const paciente = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%d/%m/%Y") as f_nac, description FROM  paciente WHERE num_docu = ?', num_docu);
    console.log(paciente[0])
    if (paciente[0]) {
        res.redirect('/pacientes/edit/' + paciente[0].id)
    }
    else {
        res.render('pacientes/add', {num_docu})
    }
})


router.get('/add', isLoggedIn, async (req, res) => {
    const paciente = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%d/%m/%Y") as f_nac, description FROM  paciente ORDER BY num_docu ASC');
    res.render('pacientes/add', { paciente });
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { t_docu, num_docu, nombre, sexo, direccion, telefono, email, fecha_nacimiento, description } = req.body;
    const newPaciente = {
        t_docu, 
        num_docu, 
        nombre,
        sexo,
        direccion, 
        telefono, 
        email,
        fecha_nacimiento, 
        description,
        user_id: req.user.id
    };
    console.log(newPaciente);
    await pool.query('INSERT INTO paciente set ?', [newPaciente]);
    req.flash('success', 'Paciente Guardado!');
    res.redirect('/pacientes');
});

router.get('/', isLoggedIn, async (req , res) => {
    const paciente = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%d/%m/%Y") as f_nac, description FROM  paciente ORDER BY id DESC');
    res.render('pacientes/list', { paciente });
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM paciente WHERE ID = ?', [id]);
    req.flash('success', 'Paciente removido!');
    res.redirect('/pacientes');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    const estudios = await pool.query('select id, t_informe, informe_cod, fec_inf, patologo from informe WHERE numdoc = ?', res_pacientes[0].num_docu)
    const estudiosC = await pool.query('select id, t_informe, informe_cod, fec_inf, patologo from informec WHERE numdoc = ?', res_pacientes[0].num_docu)
    
    res.render('pacientes/edit', {paciente: res_pacientes[0], estudios: estudios, estudiosC: estudiosC});
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { t_docu, num_docu, nombre, sexo, direccion, telefono, email, fecha_nacimiento, description } = req.body;
    const { id } = req.params;
    const editPaciente = {
        t_docu, 
        num_docu, 
        nombre,
        sexo,
        direccion, 
        telefono, 
        email,
        fecha_nacimiento,
        description,
        user_id: req.user.id
    };
    console.log(editPaciente);
    await pool.query('UPDATE paciente set ? WHERE id = ?', [editPaciente, id]);
    req.flash('success', 'Paciente actualizado!');
    res.redirect('/pacientes');
});
module.exports = router;