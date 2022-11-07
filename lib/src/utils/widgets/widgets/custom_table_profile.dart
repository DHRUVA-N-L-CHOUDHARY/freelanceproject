// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';

class CustomTableRow extends StatelessWidget {
  const CustomTableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const buildCard(
          inputpic: profileimageicon,
          height: 120,
        ),
        DataTable(
          dividerThickness: 0.0,
          // ignore: prefer_const_literals_to_create_immutables
          columns: [
            const DataColumn(
                label: Text('Field',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            const DataColumn(label: Text(":")),
            const DataColumn(
                label: Text('Detail',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          ],
          // ignore: prefer_const_literals_to_create_immutables
          rows: [
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "First Name",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: 'TestCuri',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Last Name",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: 'One',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Profile ID",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '2021603',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Email ID",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: 'text1231@gmail.com',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Sponsor ID",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '200000',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Sponsor Name",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: 'Nisham',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Gender",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: 'Male',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "DOB",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '28-09-2022',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Phone",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '9447677776',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Investment Amount",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '1000 INR',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Address",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: 'mpm',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Branch Name",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Branch",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "Account number",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '',
                color: Colors.black,
              )),
            ]),
            const DataRow(cells: [
              DataCell(CustomTextfield(
                displaytxt: "IFSC Code",
                color: Colors.black,
              )),
              DataCell(Text(":")),
              DataCell(CustomTextfield(
                displaytxt: '',
                color: Colors.black,
              )),
            ]),
          ],
        ),
      ],
    );
  }
}
