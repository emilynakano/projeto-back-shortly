import { Router } from "express";
import { createShortUrl } from "../controllers/urlController.js";
import tokenMiddleware from "../middlewares/tokenMiddleware.js";
import urlMiddleware from "../middlewares/urlMiddleware.js";

const urlRouter = Router();

urlRouter.post('/urls/shorten', tokenMiddleware, urlMiddleware, createShortUrl)

export default urlRouter;