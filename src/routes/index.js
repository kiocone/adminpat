const express = require('express');
const router = express.Router();
const { isLoggedIn, isNotLoggedIn } = require('../lib/auth');


router.get('/', isNotLoggedIn, (req, res) => {
    res.render('index');
});

router.get('/', isLoggedIn, (req, res) => {
    res.render('panel');
});

router.get('/panel', isLoggedIn, (req, res) => {
    res.render('panel');
});

module.exports = router;