const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/solicitar/', isLoggedIn, async (req, res) => {
    /*const res_informeQ = await pool.query('SELECT informe_cod, t_informe FROM informe WHERE t_informe = "Q" ORDER BY id DESC');
    const res_informeL = await pool.query('SELECT informe_cod, t_informe FROM informe WHERE t_informe = "L" ORDER BY id DESC');
    const res_informeC = await pool.query('SELECT informe_cod, t_informe FROM informec ORDER BY id DESC');
    */
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    res.render('liquidacion/solicitar', { entidades });
});

router.post('/solicitar/', isLoggedIn, async (req, res) => {
    /*const res_informeQ = await pool.query('SELECT informe_cod, t_informe FROM informe WHERE t_informe = "Q" ORDER BY id DESC');
    const res_informeL = await pool.query('SELECT informe_cod, t_informe FROM informe WHERE t_informe = "L" ORDER BY id DESC');
    const res_informeC = await pool.query('SELECT informe_cod, t_informe FROM informec ORDER BY id DESC');
    */
    console.log('Exito paso por POST');
    res.redirect('/liquidacion/consulta'/*, { res_informeQ, res_informeL, res_informeC }*/);
});

router.get('/consulta/', isLoggedIn, async (req, res) => {
    const { entidad, fechaInicio, fechaFin } = req.body;
    console.log( entidad, fechaInicio, fechaFin );
    res.render('liquidacion/consulta'/*, { informes }*/);
});

module.exports = router;