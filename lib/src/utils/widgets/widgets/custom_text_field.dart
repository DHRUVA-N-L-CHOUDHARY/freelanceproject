import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextfield extends StatelessWidget {
  final String? displaytxt;
  final Color? color;
  final double? fontsize;
  const CustomTextfield(
      {super.key,
      this.displaytxt,
      this.fontsize =13,
      this.color = const Color.fromARGB(0, 0, 0, 0)});

  @override
  Widget build(BuildContext context) {
    return Text(
      displaytxt!,
      style: TextStyle(fontFamily: 'Roboto', fontSize: fontsize, color: color),
    );
  }
}
