// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/registration_controller.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:get/get.dart';

class RegistrationView extends StatefulWidget {
  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  RegistrationController controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(builder: (controller) {
      return Scaffold(
        appBar: const AppBarTemplate(
          text: "Sign Up",
          option: 1 ,
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
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: const buildCard(
                        inputpic: openpic,
                        height: 200,
                      ),
                    ),
                    const Text(
                      "Sponsor id:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Enter Sponsor Id',
                      option: true,
                      controller: controller.sponsoridController,
                    ),
                    const Text(
                      "Sponsor name:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Enter Sponsor name',
                      option: true,
                      controller: controller.sponsornameController,
                    ),
                    const Text(
                      "First name:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Enter your First name',
                      option: true,
                      controller: controller.firstnameController,
                    ),
                    const Text(
                      "Last name:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Last name',
                      option: true,
                      controller: controller.lastnameController,
                    ),
                    const Text(
                      "Password:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Enter your password',
                      option: true,
                      maxLine: 1,
                      controller: controller.passwordController,
                      isSecure: controller.isSecure,
                      suffixWidget: InkWell(
                        onTap: () {
                          controller.setSecureUnSecure();
                        },
                        child: Icon(controller.isSecure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                    ),
                    const Text(
                      "Confirm Password:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Confirm password',
                      option: true,
                      maxLine: 1,
                      controller: controller.confirmpasswordController,
                      isSecure: controller.isSecure,
                      suffixWidget: InkWell(
                        onTap: () {
                          controller.setSecureUnSecure();
                        },
                        child: Icon(controller.isSecure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined),
                      ),
                    ),
                    const Text(
                      "Email-ID:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                        hintText: 'Email-ID',
                        option: true,
                        controller: controller.emailController,
                        emptyValidation: false,
                        validation: (value) {
                          if (value == "" || !GetUtils.isEmail(value)) {
                            return "Email is not valid";
                          } else {
                            return null;
                          }
                        }),
                    const Text(
                      "Phone number:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'Phone number',
                      controller: controller.phoneController,
                      option: true,
                      isDigitsOnly: true,
                    ),
                    const Text(
                      "Invest amount:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'curi 1000',
                      controller: controller.investamountController,
                      option: true,
                    ),
                    const Text(
                      "Upload Pay slip:",
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                    InputTextwidget(
                      hintText: 'No file attached',
                      option: true,
                    ),
                    DefaultButton(
                        text: "Sign Up",
                        margins: 5.0,
                        press: () {
                          // controller.signUpWithEmailAndPassword();
                          Get.toNamed("/dashboard");
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: 'Already having an account',
                        style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Login!',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 17.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Get.toNamed("/login");
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
