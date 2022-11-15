import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:get/get.dart';

class UploaddetailsfirstController extends GetxController {
  final savedetailsformkey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController sponsoridController = TextEditingController();
  TextEditingController sponsornameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController investamountController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  @override
  onInit() {
    super.onInit();
    getUserData();
  }

  void getUserData() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('users').where("email",isEqualTo: FirebaseAuth.instance.currentUser?.email).get();
    Usermodel _user = Usermodel.fromJson(querySnapshot.docs[0].data());
    print("ssss");
    firstnameController.text = _user.firstname ?? "";
    emailController.text = _user.email ?? "";
    lastnameController.text = _user.lastname ?? "";
    sponsoridController.text  = _user.sponsorid ?? "";
    sponsornameController.text = _user.sponsorname ?? "";
    phoneController.text = _user.phone ?? "";
    investamountController.text = _user.investamount ?? "";
    dobController.text = _user.dob ?? "";
    genderController.text = _user.gender ?? "Male";
  }
}
