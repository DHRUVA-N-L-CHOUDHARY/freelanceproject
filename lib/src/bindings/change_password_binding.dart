import 'package:freelanceproject/src/controllers/change_password_controller.dart';
import 'package:get/get.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ChangePasswordController>(ChangePasswordController());
  }
}
