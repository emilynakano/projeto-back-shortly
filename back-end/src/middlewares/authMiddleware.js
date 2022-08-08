import { signInSchema, signUpSchema } from "../schemas/authSchema.js";

async function signUpMiddleware (req, res, next) {
    const {error} = signUpSchema.validate(req.body);
    if(error) {
        return res.status(401).send(error.details.map(err => err.message));
    }
    next()
}
async function signInMiddleware (req, res, next) {
    const {error} = signInSchema.validate(req.body);
    if(error) {
        return res.status(401).send(error.details.map(err => err.message));
    }
    next()
}
export {signUpMiddleware, signInMiddleware}