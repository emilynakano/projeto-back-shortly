import connection from "../db/postgres.js";
export async function getUser (req, res) {
    const {user} = res.locals;

    try {
        const {rows: urls} = await connection.query(`
        SELECT id, "shortUrl", url, "visitCount" FROM "shortenedUrls" WHERE "userId"=$1
        `, [user.id]);
    
        let sum = 0;
        urls.map(url => sum += url.visitCount)
    
        const urlsUser = {
            "id": user.id,
            "name": user.name,
            "visitCount": sum,
            "shortenedUrls":urls
        }
        res.send(urlsUser).status(200);
    } catch {
        res.sendStatus(500)
    }
}