const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');
const { calcEdad } = require('../lib/helpers');

router.get('/', isLoggedIn, (req, res) => {
    res.render('informes/ult_informes');
});

router.get('/tipo_informe', isLoggedIn, (req, res) => {
    res.render('informes/tipo_informe');
});

router.get('/nuevo', isLoggedIn, (req, res) => {
    res.render('informes/nuevo');
});

router.post('/nuevo/', isLoggedIn, async (req, res) => {
    const { t_informe, num_docu, nombre, telefono, sexo, f_nac } = req.body;
    console.log(t_informe, num_docu, nombre, telefono, sexo, f_nac);
    ultInformes = await pool.query('SELECT * FROM secuenciaInforme WHERE id = 1');
    const { ultQ, ultC, ultL } = ultInformes[0];
    console.log(ultQ, ultC, ultL);
    var ultInf = 0;
    if (t_informe === 'Q') {
        ultInf = ultQ;
        console.log('Ultimo Q');
    } else if (ultInformes === 'C') {
        ultInf = ultC;
        console.log('Ultimo C');
    } else if (ultInformes === 'L') {
        ultInf = ultL;
        console.log('Ultimo L');
    }

    res.redirect('/informes/nuevo?t=' + t_informe + '&ultCod=' + ultInf + 
    '&num_docu=' + num_docu + '&nombre=' + nombre + '&telefono=' + telefono + 
    '&sexo=' + sexo + '&f_nac=' + f_nac);
});

router.get('/', isLoggedIn, async (req, res) => {
    //const listaInformes = await pool.query('SELECT * FROM informes');
    res.render('informes/tipo_informe', { listaInformes });
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