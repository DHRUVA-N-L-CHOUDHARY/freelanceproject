// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';

class CustomRadioListtile extends StatefulWidget {
  const CustomRadioListtile({super.key});

  @override
  State<CustomRadioListtile> createState() => _CustomRadioListtileState();
}

class _CustomRadioListtileState extends State<CustomRadioListtile> {
  String radioButtonItem = 'ONE';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              activeColor: kPrimaryColor,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Male';
                  id = 1;
                });
              },
            ),
            Text(
              'Male',
              style: new TextStyle(fontSize: 15.0),
            ),
            Radio(
              value: 2,
              groupValue: id,
              activeColor: kPrimaryColor,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Female';
                  id = 2;
                });
              },
            ),
            Text(
              'Female',
              style: new TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
