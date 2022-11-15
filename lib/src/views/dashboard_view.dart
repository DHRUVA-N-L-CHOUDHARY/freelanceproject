import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/logout_controller.dart';
import 'package:freelanceproject/src/routes/app_pages.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_sized_box.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_dashboard_purple.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/dashboard_table.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/profile_section.dart';
import 'package:get/get.dart';

class DashboardPageView extends StatefulWidget {
  const DashboardPageView({super.key});

  @override
  State<DashboardPageView> createState() => _DashboardPageViewState();
}

class _DashboardPageViewState extends State<DashboardPageView> {
  @override
  Widget build(BuildContext context) {
    LogoutController logoutController = Get.put(LogoutController());
    return Scaffold(
      //  drawer: const Sidemenubar(),
      appBar: AppBarTemplate(
        text: "Dashboard",
        option: 3,
        optionbutton: 2,
        requiredicon: Icons.logout,
        onPressed: () async {
          await logoutController.logoutUser().then((value) {
            Get.offAllNamed(Routes.LOGIN);
          });
        },
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
          // const CustomTableDashboard(),
          dashboardupper(),
          const CustomTableDashboardPurple(),
        ],
      ),
    );
  }
}
