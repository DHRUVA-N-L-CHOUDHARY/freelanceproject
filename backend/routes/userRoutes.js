import { Router } from "express";
import { userDetails } from "../controllers/userController.js";
import auth from "../middleware/auth.js";
const router = Router();

router.route("/user-details").get(auth, userDetails);

export default router;