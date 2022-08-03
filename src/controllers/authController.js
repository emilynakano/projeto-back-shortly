import connection from "../databases/postgres.js";
import bcrypt from 'bcrypt'
import {v4 as uuid} from 'uuid'


export async function signUp(req, res) {
    const {name, email, password} = req.body;

    const { rowCount } = await connection.query(`
    SELECT * FROM users WHERE email=$1`, [email]
    )

    if(rowCount > 0) {
        return res.sendStatus(409)
    }

    const passwordHash = bcrypt.hashSync(password, 10);

    await connection.query(`
    INSERT INTO users (name, email, password) VALUES ($1, $2, $3)`, 
    [name, email, passwordHash] )

    res.sendStatus(201)
}
export async function signIn(req, res) {
}

