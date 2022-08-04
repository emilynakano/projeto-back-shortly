import connection from '../databases/postgres.js'
import { nanoid } from 'nanoid'

export async function createShortUrl(req, res) {
    const { url } = req.body;
    const {user} = res.locals;

    const shortUri = nanoid();

    try {
        await connection.query(`
        INSERT INTO "shortenedUrls" ("userId", "shortUrl", "url") VALUES ($1, $2, $3)`,
        [user[0].id, shortUri, url])
    
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