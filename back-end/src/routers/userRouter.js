import { Router } from "express";
import { getUser } from "../controllers/userController.js";
import tokenMiddleware from "../middlewares/tokenMiddleware.js";
const userRouter = Router();
userRouter.get('/users/me', tokenMiddleware, getUser);
export default userRouter