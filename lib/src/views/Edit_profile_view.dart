// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_table_edit_profile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';

class EditprofileView extends StatelessWidget {
  const EditprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTemplate(
        text: "Edit Profile",
        option: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextfield(
                displaytxt: "PERSONAL DETAILS",
                color: Colors.black,
                fontsize: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: CustomTableEditProfileView(),
              ),
              DefaultButton(
                text: "Save Changes",
                margins: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
