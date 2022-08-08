import connection from '../databases/postgres.js'
import { nanoid } from 'nanoid'

export async function createShortUrl(req, res) {
    const { url } = req.body;
    const {user} = res.locals;

    const shortUri = nanoid();

    try {
        await connection.query(`
        INSERT INTO "shortenedUrls" ("userId", "shortUrl", "url") VALUES ($1, $2, $3)`,
        [user.id, shortUri, url])
    
        res.send({"shortUri": shortUri}).status(201)
    } catch {
        res.sendStatus(500)
    }

}

export async function getUrlById(req, res) {
    try {
        const {rows: url, rowCount} = await connection.query(`
        SELECT id, "shortUrl", url FROM "shortenedUrls" WHERE id=$1`,
        [req.params.id]);
    
        if(rowCount === 0) {
            return res.sendStatus(404)
        }
    
        res.send(url[0]).status(200)
    } catch {
        res.sendStatus(500)
    }

}

export async function openUrl(req, res) {
    try {
        const {rows:urls, rowCount} = await connection.query(`
        SELECT * FROM "shortenedUrls" WHERE "shortUrl"=$1`,
        [req.params.shortUrl]);
    
        if(rowCount === 0) {
            return res.sendStatus(404)
        }
    
        await connection.query(`
        UPDATE "shortenedUrls" SET "visitCount"=$1 WHERE "shortUrl"=$2`,
        [urls[0].visitCount + 1,req.params.shortUrl])

        res.redirect(urls[0].url)
    } catch {
        res.sendStatus(500)
    }

}

export async function deleteUrl(req, res) {
    const {user} = res.locals;
    const {id} = req.params;

    try {
        const url = await connection.query(`
        SELECT * FROM "shortenedUrls" WHERE id=$1`,
        [id]);
    
        if(url.rowCount === 0) {
            return res.sendStatus(404)
        }
    
        const urlUser = await connection.query(`
        SELECT * FROM "shortenedUrls" WHERE "userId"=$1 AND id=$2`,
        [user.id, id]);
    
        if(urlUser.rowCount === 0) {
            return res.sendStatus(401)
        }
    
        await connection.query(`
        DELETE FROM "shortenedUrls" WHERE "userId"=$1 AND id=$2`,
        [user.id, id]);
    
        res.sendStatus(204)
    } catch {
        res.sendStatus(500)
    }
}

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

export async function ranking(req, res) {
    try {
        const {rows:users} = await connection.query(`
        SELECT users.id, users.name, CAST(COUNT("shortenedUrls".id) as INT) AS "linksCount", CASE WHEN SUM("shortenedUrls"."visitCount") IS NULL THEN 0 ELSE CAST(SUM("shortenedUrls"."visitCount") as INT) END AS "visitCount" FROM users FULL JOIN "shortenedUrls" ON "shortenedUrls"."userId"=users.id GROUP BY users.id, users.name ORDER BY "visitCount" DESC, "linksCount" DESC LIMIT 10;
        `);
        res.send(users).status(200)
    } catch {
        res.sendStatus(500)
    }

}