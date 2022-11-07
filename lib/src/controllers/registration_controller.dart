import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/providers/PreferenceUtils.dart';
import 'package:freelanceproject/src/services/auth.dart';
import 'package:freelanceproject/src/services/database.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_loading.dart';
import 'package:freelanceproject/src/views/login_view.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  AuthService authService = AuthService();
  DatabaseMethods databaseMethods = DatabaseMethods();

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

  Usermodel? usermodel;
  bool isSecure = true;
  bool move = false;

  @override
  void onInit() {
    super.onInit();
    PreferenceUtils.init();
  }

  setSecureUnSecure() {
    isSecure = !isSecure;
    update();
  }

  signUpWithEmailAndPassword() async {
    if (formKey.currentState!.validate()) {
      Get.focusScope?.unfocus();
      showLoader(Get.context);
      await authService
          .signUpWithEmailAndPassword(
              emailController.text, passwordController.text)
          .then((result) async {
        Get.back();
        if (result != null) {
          if (kDebugMode) {
            print("result : $result");
          }

          await PreferenceUtils.setString(keyUserId, "${result.uid}");
          await PreferenceUtils.setString(
              keyUserName, userNameController.text.toString());
          await PreferenceUtils.setString(keyUserEmail, emailController.text);

          usermodel?.sponsorid = sponsoridController.text;
          usermodel?.sponsorname = sponsornameController.text;
          usermodel?.firstname = firstnameController.text;
          usermodel?.lastname = lastnameController.text;
          usermodel?.password = passwordController.text;
          usermodel?.confirmpassword = confirmpasswordController.text;
          usermodel?.email = emailController.text;
          usermodel?.phone = phoneController.text;
          usermodel?.investamount = investamountController.text;
          usermodel?.userid = result.uid;

          databaseMethods.addUserInfo(usermodel);

          Get.offAll(LoginView());
        }
      });
    }
  }
}
