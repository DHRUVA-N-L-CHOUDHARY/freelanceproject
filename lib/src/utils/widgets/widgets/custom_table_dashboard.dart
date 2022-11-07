import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
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
          cusicon: Icons.wallet,
          elementtext: "1000.00 INR\nTotal Wallet Balance",
          textcolor: Colors.white,
          color: kPrimaryColor,
        ),
        CustomTableElement(
          elementpic: connectdashboard,
          cusicon: Icons.account_tree,
          elementtext: "0 INR\nReferal Bonus",
          textcolor: Colors.white,
          color: kPrimaryColor,
        ),
      ]),
      TableRow(children: [
        CustomTableElement(
          elementpic: connectdashboard,
          cusicon: Icons.account_tree,
          color: kPrimaryColor,
          elementtext: "0 INR\nLevel Bonus",
          textcolor: Colors.white,
        ),
        CustomTableElement(
          elementpic: rupeedashboard,
          cusicon: Icons.attach_money_rounded,
          elementtext: "0 INR\nROI",
          color: kPrimaryColor,
          textcolor: Colors.white,
        ),
      ]),
      TableRow(children: [
        CustomTableElement(
          elementpic: rupeedashboard,
          cusicon: Icons.attach_money_rounded,
          elementtext: "0 INR\nAdd User commission",
          textcolor: Colors.white,
          color: kPrimaryColor,
        ),
        CustomTableElement(
            elementpic: moneydashboard,
            cusicon: Icons.credit_card_rounded,
            color: kPrimaryColor,
            textcolor: Colors.white,
            elementtext: "0 INR\nWidthdrawal Approved"),
      ]),
    ]);
  }
}
