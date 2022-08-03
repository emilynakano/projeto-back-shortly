import pkg from 'pg';
import dotenv from 'dotenv';

dotenv.config()

const {Pool} = pkg;

const connection = new Pool({
    host: 'localhost',
    port: 5432,
    user: 'postgres',
    password: 'postgres1',
    database: 'projeto_shortly'
});

export default connection