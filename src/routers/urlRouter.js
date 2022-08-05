import { Router } from "express";
import { createShortUrl, getUrlById, openUrl, deleteUrl, getUser, ranking } from "../controllers/urlController.js";
import tokenMiddleware from "../middlewares/tokenMiddleware.js";
import urlMiddleware from "../middlewares/urlMiddleware.js";

const urlRouter = Router();

urlRouter.post('/urls/shorten', tokenMiddleware, urlMiddleware, createShortUrl);
urlRouter.get('/urls/:id', getUrlById)
urlRouter.get('/urls/open/:shortUrl', openUrl)
urlRouter.delete('/urls/:id', tokenMiddleware, deleteUrl)
urlRouter.get('/users/me', tokenMiddleware, getUser)
urlRouter.get('/ranking', ranking)

export default urlRouter;