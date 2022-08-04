import urlSchema from "../schemas/urlSchema.js";

export default async function urlMiddleware (req, res, next) {
    const {error} = urlSchema.validate(req.body);
    if(error) {
        return res.status(401).send(error.details.map(err => err.message));
    }
    next()
}