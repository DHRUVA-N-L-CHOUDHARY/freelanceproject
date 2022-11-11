import 'package:firebase_auth/firebase_auth.dart';
import 'package:freelanceproject/src/routes/app_pages.dart';

import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';

import '../providers/PreferenceUtils.dart';
import '../views/dashboard_view.dart';
import '../views/login_view.dart';


class HomeController extends GetxController {
  late GoogleSignIn googleSign;
  var isSignIn = false.obs;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  late Rx<User?> firebaseUser;

  void onInit() {
    super.onInit();
    PreferenceUtils.init();
    firebaseUser = Rx<User?>(firebaseAuth.currentUser);
    firebaseUser.bindStream(firebaseAuth.authStateChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAllNamed("/login");
    } else {
      Get.offAllNamed("/dashboard");
    }
  }

  @override
  void onReady() async {
    googleSign = GoogleSignIn();
    ever(isSignIn, handleAuthStateChanged);
    isSignIn.value = await firebaseAuth.currentUser != null;
    firebaseAuth.authStateChanges().listen((event) {
      isSignIn.value = event != null;
    });

    super.onReady();
  }

  @override
  void onClose() {}

  void handleAuthStateChanged(isLoggedIn) {
    if (isLoggedIn) {
      Get.offAllNamed(Routes.LOGIN, arguments: firebaseAuth.currentUser);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
