const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');
const { calcEdad } = require('../lib/helpers');

router.get('/add', isLoggedIn, (req, res) => {
    res.render('patologos/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { patologo, num_doc, direccion, telefono, email } = req.body;
    const newPatologo = {
        patologo,
        num_doc,
        direccion,
        telefono,
        email
    };
    await pool.query('INSERT INTO patologo set ?', [newPatologo]);
    req.flash('success', 'Patologo Guardada!');
    res.redirect('/patologos');
});

router.get('/', isLoggedIn, async (req, res) => {
    const patologos = await pool.query('SELECT * FROM patologo');
    res.render('patologos/list', { patologos });
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
    res.render('patologos/edit', { patologos: res_patologos[0] });
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