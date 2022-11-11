import 'package:freelanceproject/src/controllers/login_controller.dart';
import 'package:get/get.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    LoginController loginController = Get.put<LoginController>(LoginController());
  }
}
