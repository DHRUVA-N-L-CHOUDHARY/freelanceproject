import mongoose from "mongoose";

const userSchema = new mongoose.Schema({
  firstname: {
    type: String,
    required: true,
    lowercase: true,
    trim: true,
  },
  lastname: {
    type: String,
    required: true,
    lowercase: true,
    trim: true,
  },
  sponsorname: {
    type: String,
    required: true,
    lowercase: true,
    trim: true,
  },
  phone: {
    type: String,
    required: false,
    unique: true,
  },
  email: {
    type: String,
    required: false,
    unique: true,
    lowercase: true,
    trim: true,
  },
  description: {
    type: String,
    required: false,
  },
  investamount: {
    type: Number,
    }
});

// Getter
userSchema.path('investamount').get(function(num) {
  return (num / 100).toFixed(2);
});

// Setter
userSchema.path('investamount').set(function(num) {
  return num * 100;
});

const User = mongoose.model("User", userSchema);

export default User;
