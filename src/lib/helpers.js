const bcrypt = require('bcryptjs');

const helpers = {};

helpers.encryptPassword = async(password) => {
    const salt = await bcrypt.genSalt(10);
    const hash = await bcrypt.hash(password, salt);
    return hash;
};

helpers.matchPasword = async(password, savedPassword) => {
    try {
        return await bcrypt.compare(password, savedPassword);
    } catch (e) {
        console.log(e);
    }
}

helpers.calcularEdad = (fechaNacimiento) => {
    const resultado = Math.floor((new Date().getTime() - new Date(fechaNacimiento).getTime()) / 3.154e+10); //retornamos el resultado
    return resultado
}


helpers.insertarEdadEnResultados = (registros) => {
    let i = 0;
    registros.forEach(registro => {
    const edad = helpers.calcularEdad(registro.f_nac)
      if (!isNaN(edad)) {
        registros[i] = {edad, ...registro}
      }
      i = i + 1;
    });
    return registros
  }
module.exports = helpers;