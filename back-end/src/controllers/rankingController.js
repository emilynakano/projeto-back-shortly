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