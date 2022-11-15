// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_profile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';
import 'package:get/get.dart';

class ProfilepageView extends StatefulWidget {
  const ProfilepageView({super.key});

  @override
  State<ProfilepageView> createState() => _ProfilepageViewState();
}

class _ProfilepageViewState extends State<ProfilepageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTemplate(
        text: "Profile Page",
        option: 3,
        optionbutton: 2,
        onPressed: () {
          Get.toNamed("/editprofile");
        },
        requiredicon: Icons.app_registration,
      ),
      body: CustomTableRow(),
    );
  }
}
