import mysql from 'mysql2/promise'

const conexao = mysql.createPool({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: '',
    database: 'db_agenda'
})

export default conexao