const { Router } = require('express');
const express = require('express');
const router = express.Router();
const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

const { calcularEdad, insertarEdadEnResultados } = require('../lib/helpers');

router.get('/check_paciente', isLoggedIn, async (req, res) => {
  res.render('pacientes/check_paciente');
});

router.post('/check_paciente', isLoggedIn, async (req,res) => {
  const { num_docu, t_docu } = req.body
  const paciente = await pool.query('SELECT id, num_docu FROM  paciente WHERE num_docu = ?', num_docu);
  if (paciente[0]) {
    res.redirect('/pacientes/edit/' + paciente[0].id)
  }
  else {
    res.render('pacientes/add', {num_docu, t_docu})
  }
})

router.post('/add', isLoggedIn, async (req, res) => {
  const { t_docu, num_docu, nombre, sexo, direccion, telefono, email, fecha_nacimiento, description } = req.body;
  const newPaciente = {
      t_docu, 
      num_docu, 
      nombre,
      sexo,
      direccion, 
      telefono, 
      email,
      fecha_nacimiento, 
      description,
      user_id: req.user.id
  };
  await pool.query('INSERT INTO paciente set ?', [newPaciente]);
  req.flash('success', 'Paciente Guardado!');
  res.redirect('/pacientes');
});

router.post('/', isLoggedIn, async ( req, res ) => {
  const {busqueda} = req.body
  let query = ''
  if (busqueda){
      query = 'SELECT id, t_docu, num_docu, nombre, sexo, DATE_FORMAT(fecha_nacimiento, "%m/%d/%Y") as f_nac from paciente WHERE num_docu LIKE ? OR nombre LIKE ? ORDER BY id DESC LIMIT 200'
  } else {
      query = 'SELECT id, t_docu, num_docu, nombre, sexo, DATE_FORMAT(fecha_nacimiento, "%m/%d/%Y") as f_nac from paciente WHERE num_docu LIKE ? OR nombre LIKE ? ORDER BY id DESC LIMIT 100'
  }
  let pacientes = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%']); //Search in table by Patient Document or name
  pacientes = insertarEdadEnResultados(pacientes)
  res.render('pacientes/list', {pacientes, busqueda})
});
//                ----------------------añadir edad junto a fecha de nacimiento en negrita -----------------------------
router.get('/', isLoggedIn, async (req , res) => {
  let pacientes = await pool.query('SELECT id, t_docu, num_docu, nombre, sexo, DATE_FORMAT(fecha_nacimiento, "%m/%d/%Y") as f_nac FROM  paciente ORDER BY id DESC LIMIT 100');
  pacientes = insertarEdadEnResultados(pacientes)
  res.render('pacientes/list', { pacientes });
});

router.get('/delete/:id', isLoggedIn, async (req, res) => {
  const { id } = req.params;
  await pool.query('DELETE FROM paciente WHERE ID = ?', [id]);
  req.flash('success', 'Paciente removido!');
  res.redirect('/pacientes');
});

router.get('/edit/:id', isLoggedIn, async (req, res) => {
  const { id } = req.params;
  const res_pacientes = await pool.query('SELECT *, DATE_FORMAT(fecha_nacimiento, "%Y/%m/%d") as f_nac FROM paciente WHERE id = ?', [id]);
  const estudios = await pool.query('select id, t_informe, informe_cod, fec_inf, patologo from informe WHERE numdoc = ?', res_pacientes[0].num_docu)
  const estudiosC = await pool.query('select id, t_informe, informe_cod, fec_inf, patologo from informec WHERE numdoc = ?', res_pacientes[0].num_docu)
  const edad = calcularEdad(res_pacientes[0].f_nac)
  res.render('pacientes/edit', {paciente: res_pacientes[0], estudios: estudios, estudiosC: estudiosC, edad });
});

router.post('/edit/:id', isLoggedIn, async (req, res) => {
  const editPaciente = req.body;
  const { id } = req.params;
  await pool.query('UPDATE paciente set ? WHERE id = ?', [editPaciente, id]);
  req.flash('success', 'Paciente actualizado!');
  res.redirect('/pacientes');
});
module.exports = router;