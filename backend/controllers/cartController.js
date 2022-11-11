import Cart from "../models/cart.js";
import Product from "../models/product.js";
import Users from "../models/user.js";

//! Add an item to the Cart /cart/add-to-cart
export const addToCart = async (req, res, next) => {
  const {productId, quantity} = req.body;
  const userId = req.user;

  try {
    const product = await Product.findById(productId);
    const price = await product.price;
    let cart = await Cart.findOne({ userId });
    if (cart) {
      let itemIndex = cart.products.findIndex((p) => p.productId == productId);

      if (itemIndex > -1) {
        let productItem = cart.products[itemIndex];
        productItem.quantity = quantity;
        cart.products[itemIndex] = productItem;
      } else {
        cart.products.push({ productId, quantity, price });
      }
      cart = await cart.save();
      return res.status(201).send(cart);
    } else {
      const newCart = await Cart.create({
        userId,
        products: [{ productId, quantity, price }],
      });

      return res.status(201).send(newCart);
    }
  } catch (err) {
    console.log(err);

    console.log(err);
    return res.status(500).json({
      message: err.message,
    });
  }
};

//! get all products from cart /cart/fetch-all
export const getAllCartproducts = (req, res, next) => {
  try {
    const userId = req.user;
    Cart.find({ userId: userId })
      .then((cartItems) => {
        res.status(200).json({
          message: `Cart fetched for user ${userId}`,
          data: {
            cart: cartItems,
          },
        });
      })
      .catch((err) => {
        return res.status(500).json({
          message: err.message,
        });
      });
  } catch (error) {
    console.log(error);
    return res.status(500).json({
      message: error.message,
    });
  }
};

//! delete an item from cart /cart/delete-product/:productID
export const deleteProductFromCart = async (req, res, next) => {
  const productId = req.body;
  const { userId } = req.user;

  try {
    let cart = await Cart.findOne({ userId });
    if (cart) {
      let items = cart.products;
      items = items.filter((ele) => ele.productId.toString() != productId);
      await cart.updateOne({
        products: items,
      });
      await cart.save();
      return res.status(200).json({
        message: `Item removed from cart successfully`,
        data: {
          cart: cart,
        },
      });
    } else {
      return res.status(404).json({
        message: `Cart not found for user ${userId}`,
      });
    }
  } catch (err) {
    return res.status(500).json({
      message: err.message,
    });
  }
};

//! get total price of products in cart /cart/fetch-subtotal/:userID
export const getTotalPriceInCart = async (req, res, next) => {
  const userId = req.user;
  try {
    const cartItems = await Cart.findOne({ userId: userId });

    let subtotal = 0;
    let quantity = 0;
    const items = cartItems.products || [];
    items.forEach((ele) => {
      subtotal += ele.price * ele.quantity;
      quantity += ele.quantity;
    });
    return res.status(200).json({
      message: `Total price for items fetched successfully`,
      data: {
        userId: userId,
        quantity: quantity,
        subtotal: subtotal,
      },
    });
  } catch (err) {
    return res.status(500).json({
      message: err.message,
    });
  }
};

//! clear cart /cart/clear-cart
export const clearCart = async (req, res, next) => {
  const { userId } = req.body;
  try {
    let cart = await Cart.findOne({ userId });
    if (cart) {
      await cart.deleteOne();
      return res.status(200).json({
        message: `Cleared cart successfully`,
      });
    } else {
      return res.status(404).json({
        message: `Cart not found for user ${userId}`,
      });
    }
  } catch (err) {
    return res.status(500).json({
      message: err.message,
    });
  }
};
