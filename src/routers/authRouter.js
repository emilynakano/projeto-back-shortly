import { Router } from "express";
import { signUp, signIn } from "../controllers/authController.js";
import {signUpMiddleware, signInMiddleware} from '../middlewares/authMiddleware.js'

const authRouter = Router();

authRouter.post('/sign-up', signUpMiddleware, signUp)
authRouter.post('/sign-in', signInMiddleware, signIn)
export default authRouter;