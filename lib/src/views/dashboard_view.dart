// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_dashboard_profile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_dashboard.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_dashboard_purple.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_element.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/imagewidget.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/profile_section.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';

class DashboardPageView extends StatelessWidget {
  const DashboardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const Sidemenubar(),
      appBar: const AppBarTemplate(
        text: "Dashboard",
        option: 3,
        optionbutton: 1,
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ProfileSection(),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTableDashboard(),
          const CustomTableDashboardPurple(),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTableElement(
                  elementpic: '',
                  elementtext: 'Pending Amount:\n0 INR',
                  option: true,
                  textcolor: Colors.white,
                ),
              ],
            ),
          // Padding(
          //   padding: const EdgeInsets.only(top:8.0, bottom: 3.0, right: 8.0 , left: 8.0),
          //   child: Container(
          //     height: 20,
          //     width: double.infinity,
          //     color: kPrimaryColor,
          //     child: const CustomTextfield(
          //       displaytxt: "ADD USERS LIST",
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          // DataTable(
          //   columnSpacing: 7,
          //   columns: [
          //   const DataColumn(
          //       label: CustomTextfield(
          //     displaytxt: "S.NO",
          //     color: Colors.black,
          //   )),
          //   const DataColumn(
          //       label: CustomTextfield(
          //     displaytxt: "USERNAME",
          //     color: Colors.black,
          //   )),
          //   const DataColumn(
          //       label: CustomTextfield(
          //     displaytxt: "PROFILE ID",
          //     color: Colors.black,
          //   )),
          //   const DataColumn(
          //       label: CustomTextfield(
          //     displaytxt: "INVESTMENT",
          //     color: Colors.black,
          //   )),
          //   const DataColumn(
          //       label: CustomTextfield(
          //     displaytxt: "DATE",
          //     color: Colors.black,
          //   ))
          // ], rows: []),
          // Container(
          //   width: double.infinity,
          //   height: 50,
          //   child: const TextButton(child: Text("View More...",), onPressed: null,),
          // )
        ],
      ),
    );
  }
}
