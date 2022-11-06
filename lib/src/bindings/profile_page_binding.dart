import 'package:freelanceproject/src/controllers/profile_page_controller.dart';
import 'package:get/get.dart';


class ProfilepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProfilepageController>(ProfilepageController());
  }
}
