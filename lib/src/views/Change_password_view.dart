// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';

class Changepasswordview extends StatelessWidget {
  const Changepasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Sidemenubar(),
      appBar: const AppBarTemplate(
        text: "Change Password",
        option: 2,
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
              icondata: Icons.lock,
            ),
            InputTextwidget(
              hintText: "Enter your new password",
              labelText: "Enter your new password",
              option: false,
              icondata: Icons.lock,
            ),
            InputTextwidget(
              hintText: "Confirm new password",
              labelText: "Confirm new password",
              option: false,
              icondata: Icons.lock,
            ),
            SizedBox(height: 30,),
            const DefaultButton(text: "Save Changes",)
          ],
        ),
      ),
    );
  }
}
