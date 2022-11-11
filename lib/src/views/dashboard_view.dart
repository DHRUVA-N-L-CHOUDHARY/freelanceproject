
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_sized_box.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_dashboard.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_dashboard_purple.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/profile_section.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/sidemenu_bar.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class DashboardPageView extends StatefulWidget {
  const DashboardPageView({super.key});

  @override
  State<DashboardPageView> createState() => _DashboardPageViewState();
}

class _DashboardPageViewState extends State<DashboardPageView> {

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
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: ProfileSection(),
          ),
          CustomSizedBox(
            inputHeight: 20,
            inputWidth: double.infinity,
            color: Colors.white,
          ),
          const CustomTableDashboard(),
          const CustomTableDashboardPurple(),
          //    Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       CustomTableElement(
          //         elementpic: '',
          //         elementtext: 'Pending Amount:\n0 INR',
          //         option: true,
          //         textcolor: Colors.white,
          //       ),
          //     ],
          //   ),
        ],
      ),
    );
  }
}
