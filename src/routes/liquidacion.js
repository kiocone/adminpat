const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/solicitar/', isLoggedIn, async (req, res) => {
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    res.render('liquidacion/solicitar', { entidades });
});

router.post('/solicitar/', isLoggedIn, async (req, res) => {

    res.redirect('/liquidacion/consulta');
});

router.get('/consulta/', isLoggedIn, async (req, res) => {
    const entidad = req.query.entidad;
    const fechaInicio = req.query.fechaInicio;
    const fechaFin = req.query.fechaFin;
    const yearmes = fechaInicio.slice(0,7) + '%';

    console.log(entidad, yearmes);
    const vista_liquidacion = await pool.query('(SELECT fec_ingreso, numdoc, paciente, entidad, eps FROM informe WHERE entidad = ? OR fec_ingreso like ?) UNION (SELECT fec_ingreso, numdoc, paciente, entidad, eps FROM informec WHERE entidad = ? AND fec_ingreso like ?) ORDER BY fec_ingreso ASC', [entidad, yearmes, entidad, yearmes]);
    var i = 0;
    vista_liquidacion.forEach(eps => {
        switch (vista_liquidacion[i].eps) {
            case "0":
                vista_liquidacion[i].eps = "";
                break;
        }
        i = i+1;        
    });
    console.log(vista_liquidacion);
    res.render('liquidacion/consulta', { vista_liquidacion, entidad });
});

module.exports = router;