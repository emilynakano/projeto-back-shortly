import connection from "../db/postgres.js";

export default async function tokenMiddleware (req, res, next) {
    const {authorization} = req.headers;
    const token = authorization?.replace('Bearer ', '');
    
    if(!token) {
        return res.sendStatus(401)
    }
    
    const {rowCount, rows: user} = await connection.query(`
    SELECT users.* FROM sessions 
    JOIN users ON sessions."userId"=users.id 
    WHERE token=$1`, [token]);

    if(rowCount === 0) {
        return res.sendStatus(404)
    }
    res.locals.user = user[0]
    next()
}