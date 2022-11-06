import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';

class CustomTableElement extends StatelessWidget {
  final String elementpic;
  final String elementtext;
  final Color? color;
  bool? option;
  final Color? textcolor;
  CustomTableElement(
      {super.key,
      required this.elementpic,
      required this.elementtext,
      this.color = kPrimaryColor,
      this.option = false,
      this.textcolor = const Color.fromARGB(0, 0, 0, 0)});

  @override
  Widget build(BuildContext context) {
    if (option == true) {
      return Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 164,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              //  buildCard(inputpic: elementpic, height: 20),
              CustomTextfield(
                displaytxt: elementtext,
                color: textcolor,
              )
            ]),
          ),
        )
      ]);
    } else {
      return Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 164,
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              buildCard(inputpic: elementpic, height: 20),
              CustomTextfield(displaytxt: elementtext, color: textcolor)
            ]),
          ),
        )
      ]);
    }
  }
}
