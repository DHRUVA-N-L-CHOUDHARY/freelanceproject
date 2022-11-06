// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/login_controller.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/checkbox.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        appBar: const AppBarTemplate(
          text: "Log In",
          option: 1,
        ),
        body: Form(
          key: controller.formKey,
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    const buildCard(
                      inputpic: openpic,
                      height: 200,
                    ),
                    InputTextwidget(
                        hintText: "Username",
                        labelText: 'Username',
                        icondata: Icons.person_outline_rounded,
                        controller: controller.emailController,
                        emptyValidation: false,
                        validation: (value) {
                          if (value == "" || !GetUtils.isEmail(value)) {
                            return "Email is not valid";
                          } else {
                            return null;
                          }
                        }
                        // option: true,
                        ),
                    InputTextwidget(
                      labelText: 'Password',
                      hintText: 'Password',
                      icondata: Icons.lock_open_rounded,
                      maxLine: 1,
                      suffixWidget: InkWell(
                        onTap: () {
                          controller.setSecureUnSecure();
                        },
                        child: Icon(controller.isSecure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                      controller: controller.passwordController,
                      // option: true,
                      isSecure: controller.isSecure,
                    ),
                    const checkbox(),
                    const SizedBox(
                      height: 30,
                    ),
                    DefaultButton(
                        text: "Log in",
                        margins: 5.0,
                        press: () {
                          Get.toNamed("/dashboard");
                          // controller.signInWithEmailAndPassword();
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    // DefaultButton(text: "Sign in With Google", margins: 5.0, press: () {
                    //   controller.login();
                    // }),
                    Center(
                        child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: 'Don\'t have a account?',
                        style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Register!',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 17.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // Get.toNamed("/profilepage");
                                  Get.toNamed("/registration");
                                }),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
