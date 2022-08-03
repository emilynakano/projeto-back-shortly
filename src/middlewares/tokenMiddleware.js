import connection from "../databases/postgres.js";

export default async function tokenMiddleware (req, res, next) {
    const {authorization} = req.headers;
    const token = authorization?.replace('Bearer ', '');
    
    if(!token) {
        return res.sendStatus(401)
    }
    
    const {rowCount} = await connection.query(`
    SELECT * FROM sessions 
    JOIN users ON sessions."userId"=users.id 
    WHERE token=$1`, [token]);

    if(rowCount === 0) {
        return res.sendStatus(401)
    }
    next()
}