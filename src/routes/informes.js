const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');
const { calcEdad } = require('../lib/helpers');

router.get('/', isLoggedIn, async (req, res) => {
    const informes = await pool.query('SELECT * FROM informe')
    res.render('informes/ult_informes', { informes });
});

router.get('/tipo_informe', isLoggedIn, async (req, res) => {
    const pacientes = await pool.query('SELECT id, nombre FROM paciente');
    res.render('informes/tipo_informe', { pacientes });
});

router.get('/nuevo/:id:t_informe', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    const { num_docu, nombre, telefono, sexo, f_nac } = res_pacientes[0];
    //console.log(num_docu, nombre, telefono, sexo, f_nac);
    const ultInformes = await pool.query('SELECT * FROM secuenciaInforme WHERE id = 1');
    const { ultQ, ultC, ultL } = ultInformes[0];
    var ultInf = 9999;
    var t_informe = req.params.t_informe;
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    //console.log(entidades);
    const patologos = await pool.query('SELECT id, patologo FROM patologo');

    switch (t_informe) {
        case "Q":
            ultInf = ultQ + 1;
            break;
        case "L":
            ultInf = ultL + 1;
            break;
        case "C":
            ultInf = ultC + 1;
            break;
        default:
            ultInf = "Unknown";
    }
//console.log(ultQ, ultL, ultC);

    const paciente = {
        t_informe,
        num_docu,
        nombre,
        telefono,
        sexo,
        f_nac,
        ultInf
    };

    const informe = {
        paciente
    };

    res.render('informes/nuevo', { informe, entidades, patologos, epss });
});

//nuevo informe de citologia
router.get('/nuevoc/:id:t_informe', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    const { num_docu, nombre, telefono, sexo, f_nac } = res_pacientes[0];
    //console.log(num_docu, nombre, telefono, sexo, f_nac);
    const ultInformes = await pool.query('SELECT * FROM secuenciaInforme WHERE id = 1');
    const { ultQ, ultC, ultL } = ultInformes[0];
    var ultInf = 9999;
    var t_informe = req.params.t_informe;
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    //console.log(entidades);
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    const patologos = await pool.query('SELECT id, patologo FROM patologo');

    switch (t_informe) {
        case "Q":
            ultInf = ultQ + 1;
            break;
        case "L":
            ultInf = ultL + 1;
            break;
        case "C":
            ultInf = ultC + 1;
            break;
        default:
            ultInf = "Unknown";
    }
//console.log(ultQ, ultL, ultC);

    const paciente = {
        t_informe,
        num_docu,
        nombre,
        telefono,
        sexo,
        f_nac,
        ultInf
    };

    const informe = {
        paciente
    };

    res.render('informes/nuevoc', { informe, entidades, patologos, epss });
});

router.post('/nuevo/:id:t_informe', isLoggedIn, async (req, res) => {
    const { informe_cod, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, inmuno, observaciones, t_informe, ultInf } = req.body;
    nuevoInforme = {
        informe_cod,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        medRemitente,
        fec_muestra,
        fec_inf,
        fec_ingreso,
        patologo,
        macro,
        micro,
        diagnostico,
        inmuno,
        observaciones
    };
    console.log(nuevoInforme);
    await pool.query('INSERT INTO informe set ?', [nuevoInforme]);

    switch (t_informe) {
        case "Q":
            await pool.query('UPDATE secuenciaInforme set ultQ = ? WHERE id = 1', ultInf);
            break;
        case "L":
            await pool.query('UPDATE secuenciaInforme set ultL = ? WHERE id = 1', ultInf);
            break;
        case "C":
            await pool.query('UPDATE secuenciaInforme set ultC = ? WHERE id = 1', ultInf);
            break;
        default:
            ultInf = "Unknown";
    };

    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes')
});

//NuevoCitologia Post
router.post('/nuevoc/:id:t_informe', isLoggedIn, async (req, res) => {
    const { informe_cod, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, cal_muestra, ins_motivo, observaciones, t_informe, ultInf } = req.body;
    nuevoInformeC = {
        informe_cod,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        medRemitente,
        fec_muestra,
        fec_inf,
        fec_ingreso,
        patologo,
        cal_muestra,
        ins_motivo,
        observaciones
    };
    console.log(nuevoInformeC);
    //await pool.query('INSERT INTO informe set ?', [nuevoInforme]);

    switch (t_informe) {
        case "Q":
            //await pool.query('UPDATE secuenciaInforme set ultQ = ? WHERE id = 1', ultInf);
            break;
        case "L":
            //await pool.query('UPDATE secuenciaInforme set ultL = ? WHERE id = 1', ultInf);
            break;
        case "C":
            //await pool.query('UPDATE secuenciaInforme set ultC = ? WHERE id = 1', ultInf);
            break;
        default:
            ultInf = "Unknown";
    };

    console.log(t_informe, "-" ,ultInf);

    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes')
});

router.get('/imprimir/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_informe = await pool.query('SELECT id, informe_cod, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, inmuno, observaciones FROM informe WHERE id = ?', [id]);
    const res_tipoDoc = await pool.query('SELECT t_docu FROM paciente WHERE num_docu = ?', res_informe[0].numdoc );
    const res_medReg = await pool.query('SELECT reg_med FROM patologo WHERE patologo = ?', res_informe[0].patologo );

    if (res_informe[0].observaciones) {
        console.log('Observacion de informe');
    }
    else {
        console.log('Vacio');
    }
    
    if (res_informe[0].inmuno) {
        console.log('inmuno');
    }
    else {
        console.log('Inmuno Vacio');
    }

    console.log(res_informe[0]);

    res.render('informes/imprimir', { informe: res_informe[0], medico: res_medReg[0], paciente: res_tipoDoc[0], observacion: res_informe[0].observaciones, inmuno: res_informe[0].inmuno, eps: res_informe[0].eps });
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM entidad WHERE ID = ?', [id]);
    req.flash('success', 'Patologo removida!');
    res.redirect('/patologos');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_informe = await pool.query('SELECT id, informe_cod, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, observaciones FROM informe WHERE id = ?', [id]);
    const patologos = await pool.query('SELECT id, patologo FROM patologo');
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    res.render('informes/edit', { informe: res_informe[0], patologos, entidades, epss });
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    const { informe_cod, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, observaciones } = req.body;
    const { id } = req.params;
    editInforme = {
        informe_cod,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        medRemitente,
        fec_muestra,
        fec_inf,
        fec_ingreso,
        patologo,
        macro,
        micro,
        diagnostico,
        observaciones
    };
    console.log(editInforme);
    await pool.query('UPDATE informe set ? WHERE id = ?', [editInforme, id]);
    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes');
});

module.exports = router;