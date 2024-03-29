const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/lista/:clase', isLoggedIn, async (req, res) => {
    var t_informe = req.params.clase;
    //const informes = await pool.query('select id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo from informe WHERE t_informe = ? ORDER BY id DESC', [t_informe]);
    //(select id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo from informec)

    switch (t_informe) {
        case "C":
            informes = await pool.query('select id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, patologo FROM informec ORDER BY id DESC');
            //console.log(informes);
            break;
        case "Q":
            informes = await pool.query('select id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, patologo from informe WHERE t_informe = ? ORDER BY id DESC', [t_informe]);
            //console.log(informes);
            break;
        case "L":
            informes = await pool.query('select id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, patologo from informe WHERE t_informe = ? ORDER BY id DESC', [t_informe]);
            //console.log(informes);
            break;
        //console.log(i, informes[i].t_informe);
    }
    var i = 0;
    informes.forEach(t_informe => {
        switch (informes[i].t_informe) {
            case "C":
                informes[i].t_informe = "C";
                //console.log(i, informes[i].t_informe);
                break;
            default:
                informes[i].t_informe = "";
            //console.log(i, informes[i].t_informe);
        }
        i = i + 1;
    });
    //console.log(informes);
    res.render('informes/ult_informes', { informes });
});

router.get('/tipo_informe/', isLoggedIn, async (req, res) => {
    /*const res_informeQ = await pool.query('SELECT informe_cod, t_informe FROM informe WHERE t_informe = "Q" ORDER BY id DESC');
    const res_informeL = await pool.query('SELECT informe_cod, t_informe FROM informe WHERE t_informe = "L" ORDER BY id DESC');
    const res_informeC = await pool.query('SELECT informe_cod, t_informe FROM informec ORDER BY id DESC');
    */
    res.render('informes/tipo_informe' /*, { res_informeQ, res_informeL, res_informeC }*/);
});

router.get('/nuevo/:t_informe:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    const { num_docu, nombre, telefono, sexo, f_nac } = res_pacientes[0];
    //console.log(num_docu, nombre, telefono, sexo, f_nac);
    const ultInformes = await pool.query('SELECT * FROM secuenciainforme WHERE id = 1');
    const { ultQ, ultC, ultL } = ultInformes[0];
    var ultInf = 9999;
    var t_informe = req.params.t_informe;
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    //console.log(entidades);
    const patologos = await pool.query('SELECT id, patologo FROM patologo');
    const cups = await pool.query('SELECT id, cups FROM cups');

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

    res.render('informes/nuevo', { informe, entidades, patologos, epss, cups });
});

//nuevo informe de citologia
router.get('/nuevoc/:t_informe:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, direccion, telefono, email, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac, description FROM paciente WHERE id = ?', [id]);
    const { num_docu, nombre, telefono, sexo, f_nac } = res_pacientes[0];
    //console.log(num_docu, nombre, telefono, sexo, f_nac);
    const ultInformes = await pool.query('SELECT * FROM secuenciainforme WHERE id = 1');
    const { ultQ, ultC, ultL } = ultInformes[0];
    var ultInf = 9999;
    var t_informe = req.params.t_informe;
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    //console.log(entidades);
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    const patologos = await pool.query('SELECT id, patologo FROM patologo');
    const cups = await pool.query('SELECT id, cups FROM cups');

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

    res.render('informes/nuevoc', { informe, entidades, patologos, epss, cups });
});

router.post('/nuevo/:t_informe:id', isLoggedIn, async (req, res) => {
    var { informe_cod, numdoc, paciente, telefono, sexo, edad, entidad, eps, cups, valor, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, inmuno, observaciones, t_informe, ultInf } = req.body;
    if (cups == "cups") {
        var cups = "";
        var valor = "";
        
    } else {
        const valorcups = await pool.query('select valor from cups where cups.cups = ?', cups);
        var valor = valorcups[0].valor;
       
    }

    nuevoInforme = {
        informe_cod,
        t_informe,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        cups,
        valor,
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
    
    await pool.query('INSERT INTO informe set ?', [nuevoInforme]);

    switch (t_informe) {
        case "Q":
            await pool.query('UPDATE secuenciainforme set ultQ = ? WHERE id = 1', ultInf);
            break;
        case "L":
            await pool.query('UPDATE secuenciainforme set ultL = ? WHERE id = 1', ultInf);
            break;
        case "C":
            await pool.query('UPDATE secuenciainforme set ultC = ? WHERE id = 1', ultInf);
            break;
        default:
            ultInf = "Unknown";
    };

    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes/lista/' + t_informe)
});

//NuevoCitologia Post
router.post('/nuevoc/:t_informe:id', isLoggedIn, async (req, res) => {
    var {
        informe_cod,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        cups,
        valor,
        medRemitente,
        fec_muestra,
        fec_inf,
        fec_ingreso,
        patologo,
        tipo_cito,
        cal_muestra,
        ins_motivo,
        cat_gen,
        cbox1,
        cbox2,
        cbox3,
        cbox4,
        cbox5,
        cbox6,
        cbox7,
        cbox8,
        cbox9,
        cbox10,
        cbox11,
        cbox12,
        cbox13,
        cbox14,
        cbox15,
        cbox16,
        cbox17,
        cbox18,
        cbox19,
        cbox20,
        cbox21,
        cbox22,
        cbox23,
        cbox24,
        cbox25,
        cbox26,
        cbox27,
        cbox28,
        cbox29,
        cbox30,
        cbox31,
        cbox32,
        cbox33,
        observaciones,
        t_informe,
        ultInf
    } = req.body;
    
    if (cups == "cups") {
        var cups = "";
        var valor = "";
        
    } else {
        const valorcups = await pool.query('select valor from cups where cups.cups = ?', cups);
        var valor = valorcups[0].valor;
        
    }
    
    nuevoInformeC = {
        informe_cod,
        t_informe,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        cups,
        valor,
        medRemitente,
        fec_muestra,
        fec_inf,
        fec_ingreso,
        patologo,
        tipo_cito,
        cal_muestra,
        ins_motivo,
        cat_gen,
        cbox1,
        cbox2,
        cbox3,
        cbox4,
        cbox5,
        cbox6,
        cbox7,
        cbox8,
        cbox9,
        cbox10,
        cbox11,
        cbox12,
        cbox13,
        cbox14,
        cbox15,
        cbox16,
        cbox17,
        cbox18,
        cbox19,
        cbox20,
        cbox21,
        cbox22,
        cbox23,
        cbox24,
        cbox25,
        cbox26,
        cbox27,
        cbox28,
        cbox29,
        cbox30,
        cbox31,
        cbox32,
        cbox33,
        observaciones
    };
    
    await pool.query('INSERT INTO informec set ?', [nuevoInformeC]);

    switch (t_informe) {
        case "Q":
            await pool.query('UPDATE secuenciainforme set ultQ = ? WHERE id = 1', ultInf);
            break;
        case "L":
            await pool.query('UPDATE secuenciainforme set ultL = ? WHERE id = 1', ultInf);
            break;
        case "C":
            await pool.query('UPDATE secuenciainforme set ultC = ? WHERE id = 1', ultInf);
            break;
        default:
            ultInf = "Unknown";
    };


    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes/lista/' + t_informe)
});

router.get('/saveImprimir/:p:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const { p } = req.params;
    
    res.redirect('/informes/imprimir/' + id)
})

router.get('/imprimir/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_informe = await pool.query('SELECT id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, inmuno, observaciones FROM informe WHERE id = ?', [id]);
    
    const res_tipoDoc = await pool.query('SELECT t_docu FROM paciente WHERE num_docu = ?', res_informe[0].numdoc);
    
    const res_medReg = await pool.query('SELECT reg_med FROM patologo WHERE patologo = ?', res_informe[0].patologo);

    if (res_informe[0].observaciones) {
        
    } else {
        
    }

    if (res_informe[0].inmuno) {
        
    } else {
        
    }

    
    res.render('informes/imprimir', { informe: res_informe[0], medico: res_medReg[0], paciente: res_tipoDoc[0], observacion: res_informe[0].observaciones, inmuno: res_informe[0].inmuno, eps: res_informe[0].eps });
});

//Impresion de informe Citologia
router.get('/imprimirC/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_informe = await pool.query('SELECT id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, tipo_cito, cal_muestra, ins_motivo, cat_gen, cbox1, cbox2, cbox3, cbox4, cbox5, cbox6, cbox7, cbox8, cbox9, cbox10,  cbox11, cbox12, cbox13, cbox14, cbox15, cbox16, cbox17, cbox18, cbox19, cbox20, cbox21, cbox22, cbox23, cbox24, cbox25, cbox26, cbox27, cbox28, cbox29, cbox30, cbox31, cbox32, cbox33, observaciones FROM informec WHERE id = ?', [id]);
    const res_tipoDoc = await pool.query('SELECT t_docu FROM paciente WHERE num_docu = ?', res_informe[0].numdoc);
    const res_medReg = await pool.query('SELECT reg_med FROM patologo WHERE patologo = ?', res_informe[0].patologo);

    if (res_informe[0].observaciones) {
        
    } else {
        
    }

    

    res.render('informes/imprimirC', { informe: res_informe[0], medico: res_medReg[0], paciente: res_tipoDoc[0], observacion: res_informe[0].observaciones, eps: res_informe[0].eps });
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
    /* const { id } = req.params;
    await pool.query('DELETE FROM entidad WHERE ID = ?', [id]);
    req.flash('success', 'Patologo removida!');
    res.redirect('/patologos'); */
    var var01 = "10"
    
    res.redirect('/panel')
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_informe = await pool.query('SELECT id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, cups, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, inmuno, observaciones FROM informe WHERE id = ?', [id]);
    
    if (res_informe[0].cups == null) {
        res_informe[0].cups = "cups";
    }
    if (res_informe[0].cups == "") {
        res_informe[0].cups = "cups";
    }
    
    const patologos = await pool.query('SELECT id, patologo FROM patologo');
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    const cups = await pool.query('select id, cups from cups');
    res.render('informes/edit', { informe: res_informe[0], patologos, entidades, epss, cups });
});

//Editar Citologia
router.get('/editC/:id', isLoggedIn, async (req, res) => {
    const { id } = req.params;
    const res_informe = await pool.query('SELECT id, informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, cups, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, tipo_cito, cal_muestra, ins_motivo, cat_gen, cbox1, cbox2, cbox3, cbox4, cbox5, cbox6, cbox7, cbox8, cbox9, cbox10,  cbox11, cbox12, cbox13, cbox14, cbox15, cbox16, cbox17, cbox18, cbox19, cbox20, cbox21, cbox22, cbox23, cbox24, cbox25, cbox26, cbox27, cbox28, cbox29, cbox30, cbox31, cbox32, cbox33, observaciones FROM informec WHERE id = ?', [id]);
    
    if (res_informe[0].cups == null) {
        res_informe[0].cups = "cups";
    }
    if (res_informe[0].cups == "") {
        res_informe[0].cups = "cups";
    }
    
    const patologos = await pool.query('SELECT id, patologo FROM patologo');
    const entidades = await pool.query('SELECT id, razon_social FROM entidad');
    const epss = await pool.query('SELECT id, razon_social FROM eps');
    const cups = await pool.query('select id, cups from cups');
    res.render('informes/editC', { informe: res_informe[0], patologos, entidades, epss, cups });
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
    var { informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, cups, valor, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, macro, micro, diagnostico, inmuno, observaciones } = req.body;
    const { id } = req.params;
    
    if (cups == "cups") {
        var cups = "";
        var valor = "";
        
    } else {
        const valorcups = await pool.query('select valor from cups where cups.cups = ?', cups);
        try {
            var valor = valorcups[0].valor;
            
        } catch (error) {
            console.error(error);
            var valor = "";
            
        }
    }
    
    editInforme = {
        informe_cod,
        t_informe,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        cups,
        valor,
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
    
    
    await pool.query('UPDATE informe set ? WHERE id = ?', [editInforme, id]);
    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes/edit/' + id);
});

//Editar informe de citologia
router.post('/editC/:id', isLoggedIn, async (req, res) => {
    var { informe_cod, t_informe, numdoc, paciente, telefono, sexo, edad, entidad, eps, cups, valor, medRemitente, fec_muestra, fec_inf, fec_ingreso, patologo, tipo_cito, cal_muestra, ins_motivo, cat_gen, cbox1, cbox2, cbox3, cbox4, cbox5, cbox6, cbox7, cbox8, cbox9, cbox10, cbox11, cbox12, cbox13, cbox14, cbox15, cbox16, cbox17, cbox18, cbox19, cbox20, cbox21, cbox22, cbox23, cbox24, cbox25, cbox26, cbox27, cbox28, cbox29, cbox30, cbox31, cbox32, cbox33, observaciones } = req.body;
    const { id } = req.params;
    if (cups == "cups") {
        var cups = "";
        var valor = "";
        
    } else {
        var valorcups = await pool.query('select valor from cups where cups.cups = ?', cups);
        try {
            var valor = valorcups[0].valor;
            
        } catch (error) {
            console.error(error);
            var valor = "";
            
        }
    }
    
    editInformeC = {
        informe_cod,
        t_informe,
        numdoc,
        paciente,
        telefono,
        sexo,
        edad,
        entidad,
        eps,
        cups,
        valor,
        medRemitente,
        fec_muestra,
        fec_inf,
        fec_ingreso,
        patologo,
        tipo_cito,
        cal_muestra,
        ins_motivo,
        cat_gen,
        cbox1,
        cbox2,
        cbox3,
        cbox4,
        cbox5,
        cbox6,
        cbox7,
        cbox8,
        cbox9,
        cbox10,
        cbox11,
        cbox12,
        cbox13,
        cbox14,
        cbox15,
        cbox16,
        cbox17,
        cbox18,
        cbox19,
        cbox20,
        cbox21,
        cbox22,
        cbox23,
        cbox24,
        cbox25,
        cbox26,
        cbox27,
        cbox28,
        cbox29,
        cbox30,
        cbox31,
        cbox32,
        cbox33,
        observaciones
    };
    
    await pool.query('UPDATE informec set ? WHERE id = ?', [editInformeC, id]);
    req.flash('success', 'Informe Guardado!');
    res.redirect('/informes/editC/' + id);
});

router.get('/consecutivo', isLoggedIn, async (req, res) => {
    const res_consecutivo = await pool.query('SELECT * FROM secuenciainforme WHERE id = 1');

    res.render('informes/consecutivo', { consecutivo: res_consecutivo[0] });
});

router.post('/consecutivo', isLoggedIn, async (req, res) => {
    const { ultQ, ultL, ultC } = req.body;
    updateConsecutivo = {
        ultQ,
        ultL,
        ultC
    };
    
    await pool.query('UPDATE secuenciainforme set ? WHERE id = 1', updateConsecutivo);
    res.redirect('/panel');
})

router.post('/buscar', isLoggedIn, async (req, res) => {
    const { encontrar } = req.body //Get find string
    const informes = await pool.query('select * from informe WHERE numdoc LIKE ? OR diagnostico LIKE ? OR informe_cod LIKE ? ORDER BY id DESC', ['%' + encontrar + '%', '%' + encontrar + '%', '%' + encontrar + '%']); //Search in table by Diag or Patient's id
    var i = 0;
    informes.forEach(t_informe => {
        switch (informes[i].t_informe) {
            case "C"://Append if report is Citologia
                informes[i].t_informe = "C";
                
                break;
            default://Whether is Quirirgico or Liquido
                informes[i].t_informe = "";
            
        }
        i = i + 1;
    });
    
    res.render('informes/ult_informes', { informes, encontrar });//Render reports results
})

module.exports = router;