import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';

class UploadProfilePhotoView extends StatelessWidget {
  const UploadProfilePhotoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Sidemenubar(),
      appBar: const AppBarTemplate(
        text: "Upload Profile Page",
        option: 2,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
      const SizedBox(height: 30),
      const buildCard(inputpic: profileimageicon, height: 150),
      const SizedBox(height: 30,),
      const DefaultButton(text: "Upload new image", press: null,)
      ],),
    );
  }
}