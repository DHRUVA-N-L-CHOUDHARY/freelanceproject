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
import 'package:freelanceproject/src/views/upload_details_first_view.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final registrationformKey = GlobalKey<FormState>();
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
    if (registrationformKey.currentState!.validate()) {
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
          Get.offAll(const UploaddetailsfirstView());
        }
      });
    }
  }
}
