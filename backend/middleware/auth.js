import User from "../models/user.js";
import errormessage from "./util.js";
import jwt from "jsonwebtoken";

export default async function auth(req, res, next) {
	try {
		const header = req.headers['authorization'];
        if(!header) {
            return res.status(400).json({message: "Token not present"});
        }
		const token = header.split(' ')[1];

		if (!token) {
			return res.status(400).json(errormessage('Token not present!'));
		}

		let userid = jwt.verify(token, process.env.JWT_SECRET);
		let user = await User.findOne({ _id: JSON.parse(userid) });
		if (!user) {
			return res.status(400).json(errormessage('Not logged in'));
		}

		req.user = user._id;
		next();
	} catch (err) {
		console.log(err);
		res.status(400).json(errormessage(err.message));
	}
};