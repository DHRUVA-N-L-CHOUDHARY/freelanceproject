import { Router } from "express";
import {
  addToCart,
  deleteProductFromCart,
  getAllCartproducts,
  getTotalPriceInCart,
  clearCart,
} from "../controllers/cartController.js";
import auth from "../middleware/auth.js";

const router = Router();

router.route("/add-to-cart").post(auth, addToCart);
router.route("/delete-product").post(auth, deleteProductFromCart);
router.post("/clear-cart", clearCart);
router.route("/fetch-all").get(auth, getAllCartproducts);
router.route("/fetch-subtotal").get(auth, getTotalPriceInCart);

export default router;
