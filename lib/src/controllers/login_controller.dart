

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/fullscreendialog.dart';
import 'package:freelanceproject/src/providers/PreferenceUtils.dart';
import 'package:freelanceproject/src/providers/local_storage.dart';
import 'package:freelanceproject/src/services/auth.dart';
import 'package:freelanceproject/src/services/database.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_loading.dart';
import 'package:freelanceproject/src/views/dashboard_view.dart';
import 'package:freelanceproject/src/views/login_view.dart';
import 'package:freelanceproject/src/views/registration_view.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home_controller.dart';

class LoginController extends GetxController {

  final formKey = GlobalKey<FormState>();
  AuthService authService = AuthService();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  HomeController homeController = Get.find<HomeController>();
  bool isSecure = true;
  @override
  void onInit() {
    super.onInit();
    PreferenceUtils.init();
  }

  setSecureUnSecure() {
    isSecure = !isSecure;
    update();
  }

  signInWithEmailAndPassword() async {
    Get.focusScope?.unfocus();
    if (formKey.currentState!.validate()) {
      showLoader(Get.context);
      await authService
          .signInWithEmailAndPassword(
              emailController.text, passwordController.text)
          .then((result) async {
        Get.back();
        if (result != null) {
          if (kDebugMode) {
            print(result.toString());
            print(result.toString());
          }

          // await PreferenceUtils.setString(keyUserId, result.uid);
          // if (kDebugMode) {
          //   print("uid : ${result.uid}");
          // }
          // await PreferenceUtils.setString(keyUserEmail, "${result.email}");

          // QuerySnapshot userInfoSnapshot =
          //     await DatabaseMethods().getUserInfo(emailController.text);

          // final userData =
          //     userInfoSnapshot.docs[0].data() as Map<String, dynamic>;
          // if (kDebugMode) {
          //   print("${userData["userName"]}");
          // }

          // await PreferenceUtils.setString(
          //     keyUserName, "${userData["userName"]}");

          Get.offAll(const DashboardPageView());
        }
      });
    }
  }
}