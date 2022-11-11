const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/', isLoggedIn, async (req, res) => {
    const cups = await pool.query('SELECT id, cups, valor, descripcion FROM cups');
    res.render('cups/lista', { cups });
});

router.get('/lista/', isLoggedIn, async (req, res) => {
    const cups = await pool.query('SELECT id, cups, valor, descripcion FROM cups');
    res.render('cups/lista', { cups });
});

router.post('/lista/', isLoggedIn, async (req, res) => {
    res.redirect('/panel');
});

router.get('/nuevo/', isLoggedIn, async (req, res) => {
    res.render('cups/nuevo');
});

router.post('/nuevo/', isLoggedIn, async (req, res) => {
    const { cups, valor, descripcion} = req.body;
        nuevocups = {
            cups,
            valor,
            descripcion
        };
    await pool.query('insert into cups set ?', [nuevocups]);
    res.redirect('/cups/lista');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_cups = await pool.query('SELECT cups, valor, descripcion FROM cups where id = ?', [id]);
    res.render('cups/edit', { id, cups: res_cups[0] });
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { cups, valor, descripcion} = req.body;
    const { id } = req.params;
    const editcups = {
            cups,
            valor,
            descripcion
    };
    const resultado = await pool.query('UPDATE cups SET ? WHERE id = ?', [editcups, id]);
    res.redirect('/cups/lista');
});

module.exports = router;