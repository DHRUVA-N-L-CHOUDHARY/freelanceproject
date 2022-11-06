import 'package:freelanceproject/src/controllers/edit_profile_page_controller.dart';
import 'package:get/get.dart';

class EditprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<EditprofileController>(EditprofileController());
  }
}
