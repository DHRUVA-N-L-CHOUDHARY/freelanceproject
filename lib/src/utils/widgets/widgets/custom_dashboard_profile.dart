// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';

class CustomDashboardProfile extends StatelessWidget {
  const CustomDashboardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const buildCard(
          inputpic: profileimageicon,
          height: 60,
        ),
        DataTable(
          dividerThickness: 0.0,
          // ignore: prefer_const_literals_to_create_immutables
          columns: [
            const DataColumn(
                label: Text('Name',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            const DataColumn(
                label: Text('Testcuri',
                    style:
                        TextStyle(fontSize: 16))),
          ],
          // ignore: prefer_const_literals_to_create_immutables
          rows: [
            DataRow(cells: [
              DataCell(CustomTextfield(displaytxt: "Profile ID")),
              DataCell(CustomTextfield(displaytxt: ':2022102603')),
            ]),
            DataRow(cells: [
              DataCell(CustomTextfield(displaytxt: "Email ID")),
              DataCell(CustomTextfield(displaytxt: ':test1231@gmail.com')),
            ]),
            DataRow(cells: [
              DataCell(CustomTextfield(displaytxt: "Sponsor name")),
              DataCell(CustomTextfield(displaytxt: ':Nisham')),
            ]),
            DataRow(cells: [
              DataCell(CustomTextfield(displaytxt: "Email ID")),
              DataCell(CustomTextfield(displaytxt: ':text1231@gmail.com')),
            ]),
          ],
        ),
      ],
    );
  }
}
