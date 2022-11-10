import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_element.dart';

class CustomTableDashboardPurple extends StatelessWidget {
  const CustomTableDashboardPurple({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(children: [
      TableRow(children: [
        CustomTableElement(
          elementpic: walletdashboard,
          option: true,
          elementtext: "Investment Amount: \n1000 INR",
          color: kPrimaryColor,
          textcolor: Colors.white,
        ),
        CustomTableElement(
            elementpic: connectdashboard,
            option: true,
            elementtext: "Level Bonus:\n0 INR",
            color: kPrimaryColor,
            textcolor: Colors.white),
      ]),
      TableRow(children: [
        CustomTableElement(
            elementpic: connectdashboard,
            option: true,
            elementtext: "Wallet Balance: \n1000 INR",
            color: kPrimaryColor,
            textcolor: Colors.white),
        CustomTableElement(
            elementpic: rupeedashboard,
            option: true,
            elementtext: "Withdraw amount :\n0 INR",
            color: kPrimaryColor,
            textcolor: Colors.white),
      ]),
      TableRow(children: [
        CustomTableElement(
            elementpic: connectdashboard,
            option: true,
            elementtext: "Pending Amount \n0 INR",
            color: kPrimaryColor,
            textcolor: Colors.white),
        Text(""),
      ]),
    ]);
  }
}
