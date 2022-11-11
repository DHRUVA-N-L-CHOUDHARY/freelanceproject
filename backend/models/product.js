import mongoose from "mongoose";
import getCosts from "../utils/getters.js";

const productSchema = new mongoose.Schema({
  //TODO: Check if a vendor is required with product
  category: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "category",
  },

  // ._id
  vendor: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "vendor",
  },
  name: {
    type: String,
    required: true,
    lowercase: true,
    trim: true,
  },
  price: {
    type: mongoose.Schema.Types.Decimal128,
    required: true,
    default: 0,
    get: getCosts
  },
  description: {
    type: String,
    required: false,
  },
  imageURL: {
    type: String,
    required: true,
  },
  availability: {
    type: Boolean,
    required: true,
  },
}, {toJSON: {getters: true}});

const Product = mongoose.model("Product", productSchema);

export default Product;
