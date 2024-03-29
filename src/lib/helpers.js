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
        console.error(e);
    }
}

helpers.calcEdad = (fechaNacimiento) => {
    return fechaNacimiento; //retornamos el resultado
}


module.exports = helpers;