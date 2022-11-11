import { Router } from "express";
import {
  getCategories,
  getProductsFromCategories,
  newCategory,
} from "../controllers/categoryController.js";

const router = Router();

router.get("/fetch-all", getCategories);
router.get("/fetch-products", getProductsFromCategories);
router.post("/new-category", newCategory);

export default router;
