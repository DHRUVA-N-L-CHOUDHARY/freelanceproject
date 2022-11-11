import User from "../models/user.js";
import { successmessage, errormessage } from "../middleware/util.js";

export const userDetails = async (req, res, next) => {
	try {
		const getUser = await User.findById(req.user);

		return res
			.status(200)
			.json(successmessage('Fetched Successfuly!', getUser));
	} catch (err) {
		return res.status(400).json(errormessage(err.message));
	}
  }