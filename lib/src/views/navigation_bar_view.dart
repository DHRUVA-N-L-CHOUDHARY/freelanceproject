import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/views/Change_password_view.dart';
import 'package:freelanceproject/src/views/Edit_profile_view.dart';
import 'package:freelanceproject/src/views/add_user_list_view.dart';
import 'package:freelanceproject/src/views/dashboard_view.dart';
import 'package:freelanceproject/src/views/profile_page_view.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int tabIndex = 0;
  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: tabIndex,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ProfilepageView(),
            Changepasswordview(),
            DashboardPageView(),
            AddUserListView(),
            EditprofileView(),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // unselectedItemColor: Colors.black,
        // selectedItemColor: Colors.redAccent,
        onTap: changeTabIndex,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        // type: BottomNavigationBarType.fixed,
        // currentIndex: tabIndex,
        // items: [
        //   _bottomNavigationBarItem(
        //     icon: Icons.person,
        //     label: "View Profile",
        //   ),
        //   _bottomNavigationBarItem(
        //     icon: Icons.password,
        //     label: "Change Password",
        //   ),
        //   _bottomNavigationBarItem(
        //     icon: Icons.add_box,
        //     label: "Add Users List",
        //   ),
        //   _bottomNavigationBarItem(
        //     icon: Icons.dashboard,
        //     label: "Dashboard",
        //   )
        // ],
        icons: [
          Icons.person,
          Icons.password,
          Icons.dashboard,
          Icons.add_box,
          Icons.app_registration
        ],
        activeIndex: tabIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        activeColor: kPrimaryColor,
        iconSize: 25,

      ),
    );
  }

  // _bottomNavigationBarItem({required IconData icon, required String label}) {
  //   return AnimatedBottomNavigationBarItem(
  //     icon: Icon(icon, color: kPrimaryColor,),
  //     label: label,
  //   );
  // }
}
