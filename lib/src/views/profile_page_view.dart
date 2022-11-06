// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_profile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';

class ProfilepageView extends StatelessWidget {
  const ProfilepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Sidemenubar(),
      appBar: AppBarTemplate(
        text: "Profile Page",
        option: 2,
      ),
      body: CustomTableRow(),
    );
  }
}
