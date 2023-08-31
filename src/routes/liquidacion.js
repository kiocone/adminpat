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

    var vista_liquidacion = await pool.query('(SELECT fec_ingreso, numdoc, paciente, entidad, eps, cups, valor FROM informe WHERE entidad = ? AND fec_ingreso like ?) UNION (SELECT fec_ingreso, numdoc, paciente, entidad, eps, cups, valor FROM informec WHERE entidad = ? AND fec_ingreso like ?) ORDER BY fec_ingreso ASC', [entidad, yearmes, entidad, yearmes]);
    //var vista_liquidacion = await pool.query('(SELECT informe.fec_ingreso as fecha, informe.numdoc as documento, informe.paciente as nombre, informe.entidad as entidad, informe.eps as eps, informe.cups as cups, cups.valor as valor FROM informe, cups where informe.cups = cups.cups and informe.entidad = ? and informe.fec_ingreso like ?) UNION (SELECT informec.fec_ingreso as fecha, informec.numdoc as documento, informec.paciente as nombre, informec.entidad as entidad, informec.eps as eps, informec.cups as cups, cups.valor as valor FROM informe, cups where informe.cups = cups.cups and informe.entidad = ? and informe.fec_ingreso like ?)', [entidad, yearmes, entidad, yearmes]);
    
    var i = 0;
    vista_liquidacion.forEach(eps => {
        switch (vista_liquidacion[i].eps) {
            case "0":
                vista_liquidacion[i].eps = "";
                break;
        }
        i = i+1;        
    });
    res.render('liquidacion/consulta', { vista_liquidacion, entidad, periodo:  fechaInicio.slice(0,7)});
});

module.exports = router;