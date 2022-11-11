const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/add', isLoggedIn, (req, res) => {
    res.render('entidades/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { nit, razon_social, direccion, telefono, email } = req.body;
    const newEntidad = {
        nit,
        razon_social,
        direccion,
        telefono,
        email
    };
    await pool.query('INSERT INTO entidad set ?', [newEntidad]);
    req.flash('success', 'Entidad Guardada!');
    res.redirect('/entidades');
});

router.get('/', isLoggedIn, async (req , res) => {
    const entidades = await pool.query('SELECT * FROM entidad');
    res.render('entidades/list', { entidades });
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM entidad WHERE ID = ?', [id]);
    req.flash('success', 'Entidad removida!');
    res.redirect('/entidades');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_entidades = await pool.query('SELECT id, nit, razon_social, direccion, telefono, email FROM entidad WHERE id = ?', [id]);
    res.render('entidades/edit', {entidad: res_entidades[0]});
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { nit, razon_social, direccion, telefono, email } = req.body;
    const { id } = req.params;
    const editEntidad = {
        nit, 
        razon_social, 
        direccion, 
        telefono, 
        email
    };
    await pool.query('UPDATE entidad set ? WHERE id = ?', [editEntidad, id]);
    req.flash('success', 'Entidad actualizada!');
    res.redirect('/entidades');
});
module.exports = router;