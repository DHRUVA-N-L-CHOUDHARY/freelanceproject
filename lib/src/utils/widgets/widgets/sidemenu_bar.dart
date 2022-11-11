import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/home_controller.dart';
import 'package:freelanceproject/src/controllers/login_controller.dart';
import 'package:freelanceproject/src/controllers/logout_controller.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/menu_item.dart';
import 'package:freelanceproject/src/views/Change_password_view.dart';
import 'package:freelanceproject/src/views/Edit_profile_view.dart';
import 'package:freelanceproject/src/views/Upload_profile_page_photo.dart';
import 'package:freelanceproject/src/views/add_user_list_view.dart';
import 'package:freelanceproject/src/views/dashboard_view.dart';
import 'package:freelanceproject/src/views/profile_page_view.dart';
import 'package:get/get.dart';

import '../../../controllers/network_client_controller.dart';

class Sidemenubar extends StatelessWidget {
  const Sidemenubar({super.key});

  @override
  Widget build(BuildContext context) {
    LogoutController logoutController = Get.put(LogoutController());
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                  name: "View Profile",
                  icon: Icons.person,
                  onPressed: () {
                    Get.to(() => const ProfilepageView());
                  }),
              DrawerItem(
                  name: "Edit Profile View",
                  icon: Icons.addchart_outlined,
                  onPressed: () {
                    Get.to(() => const EditprofileView());
                  }),
              DrawerItem(
                  name: "Change Password",
                  icon: Icons.password,
                  onPressed: () {
                    Get.to(() => const Changepasswordview());
                  }),
              DrawerItem(
                  name: "Add User List View",
                  icon: Icons.add_box,
                  onPressed: () {
                    Get.to(() => const AddUserListView());
                  }),
              // DrawerItem(
              //     name: "Upload Profile Photo",
              //     icon: Icons.photo,
              //     onPressed: () {
              //       Get.to(() => const UploadProfilePhotoView());
              //     }),
              DrawerItem(
                  name: "Logout",
                  icon: Icons.logout_outlined,
                  onPressed: (() async {
                    await logoutController.logoutUser().then((value) {
                      Get.offAllNamed("/home");
                    });
                  })),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfilepageView()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditprofileView()));
        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Changepasswordview()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DashboardPageView()));
        break;
        // case 4:
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //           builder: (context) => const UploadProfilePhotoView()));
        break;
      default:
        Navigator.pop(context);
    }
  }

  Widget headerWidget() {
    const url = openpic;
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('TestCuri',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('test1261@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
