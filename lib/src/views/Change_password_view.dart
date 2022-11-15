// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/change_password_controller.dart';

import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';

class Changepasswordview extends StatefulWidget {
  const Changepasswordview({super.key});

  @override
  State<Changepasswordview> createState() => _ChangepasswordviewState();
}

class _ChangepasswordviewState extends State<Changepasswordview> {
  ChangePasswordController _controller = ChangePasswordController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(
        text: "Change Password",
        option: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const buildCard(inputpic: openpic, height: 150),
            const SizedBox(
              height: 20,
            ),
            InputTextwidget(
              hintText: "Enter your current password",
              labelText: "Enter your current password",
              option: false,
              controller: _controller.currpassword,
              icondata: Icons.lock,
            ),
            InputTextwidget(
              hintText: "Enter your new password",
              labelText: "Enter your new password",
              controller: _controller.newpassword,
              option: false,
              icondata: Icons.lock,
            ),
            InputTextwidget(
              hintText: "Confirm new password",
              labelText: "Confirm new password",
              controller: _controller.confirmnewpassword,
              option: false,
              icondata: Icons.lock,
            ),
            SizedBox(
              height: 30,
            ),
            DefaultButton(
              text: "Save Changes",
              press: () async {
                if (_controller.newpassword == _controller.confirmnewpassword && _controller.currpassword != _controller.newpassword)
                  await FirebaseAuth.instance.currentUser
                      ?.updatePassword(_controller.newpassword.text);
                print("Password Changed");
              },
            )
          ],
        ),
      ),
    );
  }
}
