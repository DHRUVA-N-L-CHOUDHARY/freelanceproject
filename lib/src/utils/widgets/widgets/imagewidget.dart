// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';

class buildCard extends StatelessWidget {
  final String inputpic;
  final double height;
  const buildCard({Key? key, required this.inputpic, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            inputpic,
            height: SizeConfig(context).getProportionateScreenHeight(height),
          )
        ]);
  }
}
