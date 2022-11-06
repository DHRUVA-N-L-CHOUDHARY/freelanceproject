import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_element.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';

class CustomTableEditProfileView extends StatelessWidget {
  const CustomTableEditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment:TableCellVerticalAlignment.middle,
      // ignore: prefer_const_literals_to_create_immutables
      columnWidths: {
        0:const FlexColumnWidth(70),
        1:const FlexColumnWidth(20),
        2: const FlexColumnWidth(120)
      },
      defaultColumnWidth: const FixedColumnWidth(100.0) ,
      children: [
        TableRow(
          children: [
          const CustomTextfield(
            displaytxt: "First Name",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "First name",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "Last name",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "Last name",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "DOB",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "DOB",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "Gender",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "BANK NAME",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "BANK NAME",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "BRANCH",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "BRANCH",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "ACCOUNT-NO",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "ACCOUNT-NO",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "IFSC CODE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "IFSC CODE",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "ADDRESS",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "ADDRESS",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "COUNTRY",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "COUNTRY",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "STATE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "STATE",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "CITY",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "CITY",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "CODE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "CODE",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "PHONE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "PHONE",
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "PINCODE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "PINCODE",
            option: true,
          ),
        ]),
      ],
    );
  }
}
