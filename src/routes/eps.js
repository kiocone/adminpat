const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/add', isLoggedIn, (req, res) => {
    res.render('eps/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { nit, razon_social, direccion, telefono, email } = req.body;
    const newEps = {
        nit,
        razon_social,
        direccion,
        telefono,
        email
    };
    console.log(newEps);
    await pool.query('INSERT INTO eps set ?', [newEps]);
    req.flash('success', 'EPS Guardada!');
    res.redirect('/eps');
});

router.get('/', isLoggedIn, async (req , res) => {
    const epss = await pool.query('SELECT * FROM eps');
    console.log(epss);
    res.render('eps/list', { epss });
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM eps WHERE ID = ?', [id]);
    req.flash('success', 'EPS removida!');
    res.redirect('/eps');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_epss = await pool.query('SELECT id, nit, razon_social, direccion, telefono, email FROM eps WHERE id = ?', [id]);
    res.render('eps/edit', {eps: res_epss[0]});
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { nit, razon_social, direccion, telefono, email } = req.body;
    const { id } = req.params;
    const editEps = {
        nit, 
        razon_social, 
        direccion, 
        telefono, 
        email
    };
    console.log(editEps);
    await pool.query('UPDATE eps set ? WHERE id = ?', [editEps, id]);
    req.flash('success', 'EPS actualizada!');
    res.redirect('/eps');
});
module.exports = router;