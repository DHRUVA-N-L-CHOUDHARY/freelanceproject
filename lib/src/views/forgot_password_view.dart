// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/forgot_password_controller.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
ForgotPasswordController controller = ForgotPasswordController();

    return Scaffold(
      appBar: const AppBarTemplate(
        text: "Forgot Password",
        option: 2,
      ),
      body: Center(
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
                  hintText: 'Enter your email',
                  icondata: Icons.mail_outline,
                  controller: controller.forgot,
                  option: false,
                  labelText: 'Enter your email',
                  // controller: ,
                ),
                DefaultButton(
                    text: "Reset Password", margins: 5.0, press: () {
                      controller.resetPassword(controller.forgot.text);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
