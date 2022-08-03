import { Router } from "express";
import { createShortUrl } from "../controllers/urlController.js";
import tokenMiddleware from "../middlewares/tokenMiddleware.js";

const urlRouter = Router();

urlRouter.post('/urls/shorten', tokenMiddleware, createShortUrl)

export default urlRouter;