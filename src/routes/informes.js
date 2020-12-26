const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');
const { calcEdad } = require('../lib/helpers');

router.get('/', isLoggedIn, (req, res) => {
    
    res.render('informes/ult_informes' );
});

router.get('/tipo_informe', isLoggedIn, (req, res) => {
    res.render('informes/tipo_informe');
});


router.get('/nuevo/:id:t_informe', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    const { num_docu, nombre, telefono, sexo, f_nac } = res_pacientes[0];
    //console.log(num_docu, nombre, telefono, sexo, f_nac);
    const ultInformes = await pool.query('SELECT * FROM secuenciaInforme WHERE id = 1');
    const { ultQ, ultC, ultL } = ultInformes[0];
    var ultInf = 9999;
    var t_informe = req.params.t_informe;
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    //console.log(entidades);
    const patologos = await pool.query('SELECT id, patologo FROM patologo');

    switch (t_informe) {
        case "Q":
            ultInf = ultQ;
            break;
        case "L":
            ultInf = ultL;
            break;
        case "C":
            ultInf = ultC;
            break;
        default:
            ultInf = "Unknown";
    }

    const paciente = {
        t_informe,
        num_docu,
        nombre,
        telefono,
        sexo,
        f_nac,
        ultInf
    };

    const informe = {
        paciente
    };

    res.render('informes/nuevo', { informe, entidades, patologos } );
});

router.post('/nuevo/:id:t_informe', isLoggedIn, async (req,res) => {
    const variables = req.body;
    console.log(variables);
    res.redirect('/informes')
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM entidad WHERE ID = ?', [id]);
    req.flash('success', 'Patologo removida!');
    res.redirect('/patologos');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_patologos = await pool.query('SELECT id, patologo, num_doc, direccion, telefono, email FROM patologo WHERE id = ?', [id]);
    res.render('informes/edit', { patologos: res_patologos[0] });
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { patologo, num_doc, direccion, telefono, email } = req.body;
    const { id } = req.params;
    const editPatologo = {
        patologo,
        num_doc,
        direccion,
        telefono,
        email
    };
    await pool.query('UPDATE patologo set ? WHERE id = ?', [editPatologo, id]);
    req.flash('success', 'Patólgo actualizada!');
    res.redirect('/patologos');
});
module.exports = router;