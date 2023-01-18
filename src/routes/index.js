const express = require('express');
const router = express.Router();
const { isLoggedIn, isNotLoggedIn } = require('../lib/auth');


router.get('/', isNotLoggedIn, (req, res) => {
    res.render('index');//Render Root page before login
});

router.get('/', isLoggedIn, (req, res) => {
    res.redirect('/panel');//Send user to main panel after authenticated
});

router.get('/panel', isLoggedIn, (req, res) => {
    res.render('panel');//Render Main Panel
});

module.exports = router;