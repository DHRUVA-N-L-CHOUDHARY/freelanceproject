// ignore_for_file: constant_identifier_names

import 'package:freelanceproject/src/bindings/Upload_profile_page_binding.dart';
import 'package:freelanceproject/src/bindings/change_password_binding.dart';
import 'package:freelanceproject/src/bindings/dashboard_binding.dart';
import 'package:freelanceproject/src/bindings/edit_profile_page_binding.dart';
import 'package:freelanceproject/src/bindings/forgot_binding.dart';
import 'package:freelanceproject/src/bindings/home_binding.dart';
import 'package:freelanceproject/src/bindings/login_binding.dart';
import 'package:freelanceproject/src/bindings/profile_page_binding.dart';
import 'package:freelanceproject/src/bindings/registration_binding.dart';
import 'package:freelanceproject/src/views/Change_password_view.dart';
import 'package:freelanceproject/src/views/Edit_profile_view.dart';
import 'package:freelanceproject/src/views/Upload_profile_page_photo.dart';
import 'package:freelanceproject/src/views/dashboard_view.dart';
import 'package:freelanceproject/src/views/forgot_password_view.dart';
import 'package:freelanceproject/src/views/home_view.dart';
import 'package:freelanceproject/src/views/login_view.dart';
import 'package:freelanceproject/src/views/profile_page_view.dart';
import 'package:freelanceproject/src/views/registration_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
        name: _Paths.PROFILEPAGE,
        page: () => const ProfilepageView(),
        binding: ProfilepageBinding()),
    GetPage(
        name: _Paths.DASHBOARD,
        page: () => const DashboardPageView(),
        binding: DashboardPageBinding()),
    // GetPage(
    //     name: _Paths.UPLOADPROFILEPHOTO,
    //     page: () => const UploadProfilePhotoView(),
    //     binding: UploadProfilePhotoBinding()),
    GetPage(
        name: _Paths.CHANGEPASSWORD,
        page: () => const Changepasswordview(),
        binding: ChangePasswordBinding()),
    GetPage(
        name: _Paths.EDITPROFILE,
        page: () => const EditprofileView(),
        binding: EditprofileBinding()),
  ];
}
