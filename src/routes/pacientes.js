const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');
const Swal = require('sweetalert2');
const { calcEdad } = require('../lib/helpers');

router.get('/add', isLoggedIn, (req, res) => {
    res.render('pacientes/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { t_docu, num_docu, nombre,direccion, telefono, email, fecha_nacimiento, description } = req.body;
    const newPaciente = {
        t_docu, 
        num_docu, 
        nombre,
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
    const paciente = await pool.query('SELECT id, t_docu, num_docu, nombre, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%d/%m/%Y") as f_nac, description FROM  paciente');
    res.render('pacientes/list', { paciente });
});// Ajustar resderizacion de lista de pacientes

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM paciente WHERE ID = ?', [id]);
    req.flash('success', 'Paciente removido!');
    res.redirect('/pacientes');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    res.render('pacientes/edit', {paciente: res_pacientes[0]});
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { t_docu, num_docu, nombre,direccion, telefono, email, fecha_nacimiento, description } = req.body;
    const { id } = req.params;
    const editPaciente = {
        t_docu, 
        num_docu, 
        nombre,
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