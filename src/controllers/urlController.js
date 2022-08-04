import connection from '../databases/postgres.js'
import joi from 'joi';
import { nanoid } from 'nanoid'

export async function createShortUrl(req, res) {
    const { url } = req.body;
    const {user} = res.locals;

    const shortUri = nanoid();

    await connection.query(`
    INSERT INTO "shortenedUrls" ("userId", "shortUrl", "url") VALUES ($1, $2, $3)`,
    [user[0].id, shortUri, url])

    res.send({"shortUri": shortUri}).status(201)
}