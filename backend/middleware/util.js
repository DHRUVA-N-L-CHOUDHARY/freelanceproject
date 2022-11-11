import jwt from 'jsonwebtoken';

export default function generateToken(userid) {
	const token = jwt.sign(userid, process.env.JWT_SECRET);
	// const token = jwt.sign(userid, "MYBUDSECRET");
	return token;
};

export const successmessage = (message, payload = true) => {
	return {
		success: true,
		message,
		data: payload,
	};
};
export const errormessage = (error) => {
	return {
		success: false,
		error,
	};
};

export const isValidMongoObjectId = (id) => {
	return mongoose.Types.ObjectId.isValid(id);
};

export const isNonEmptyArray = (arr) => {
	if (arr && Array.isArray(arr) && arr.length > 0) {
		return true;
	} else {
		return false;
	}
};
