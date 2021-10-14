const mysql = require('mysql');
const { promisify } = require('util');

const { database } = require('./keys');

const pool = mysql.createPool(database);

pool.getConnection((err, connection) => {
    if (err) {
        if (err.code === 'PROTOCOL_CONNECTION_LOST') {
            console.error('La conexion de la base de datos cerrada')
        }
        if (err.code === 'ERR_CON_COUNT_ERROR') {
            console.error('La base de datos tiene muchas conexiones');
        }
        if (err.code === 'ECONNREFUSED') {
            console.error('La conexion a la base de datos rechazada')
        }
    }

    if (connection) connection.release();
    console.log('DB está conectada en:', database.host)
    return;
})

pool.query = promisify(pool.query);

module.exports = pool;