import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_element.dart';

class CustomTableDashboard extends StatelessWidget {
  const CustomTableDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Table(children: [
      TableRow(children: [
        CustomTableElement(
          elementpic: walletdashboard,
          elementtext: "1000.00 INR\n Total Wallet Balance",
          textcolor: Colors.black,
          color: Color.fromARGB(255, 230, 238, 156),
        ),
        CustomTableElement(
          elementpic: connectdashboard,
          elementtext: "0 INR\n Referal Bonus",
          textcolor: Colors.black,
          color: Color.fromARGB(255, 230, 238, 156),
        ),
      ]),
      TableRow(children: [
        CustomTableElement(
          elementpic: connectdashboard,
          color: Color.fromARGB(255, 230, 238, 156),
          elementtext: "0 INR\n Level Bonus",
          textcolor: Colors.black,
        ),
        CustomTableElement(
          elementpic: rupeedashboard,
          elementtext: "0 INR\n ROI",
          color: Color.fromARGB(255, 230, 238, 156),
          textcolor: Colors.black,
        ),
      ]),
      TableRow(children: [
        CustomTableElement(
          elementpic: rupeedashboard,
          elementtext: "0 INR\n Add User commission",
          textcolor: Colors.black,
          color: Color.fromARGB(255, 230, 238, 156),
        ),
        CustomTableElement(
            elementpic: moneydashboard,
            color: Color.fromARGB(255, 230, 238, 156),
            textcolor: Colors.black,
            elementtext: "0 INR\n Widthdrawal Approved"),
      ]),
    ]);
  }
}
