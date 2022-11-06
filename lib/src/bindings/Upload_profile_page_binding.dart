import 'package:freelanceproject/src/controllers/Upload_profile_page_controller.dart';
import 'package:get/get.dart';


class UploadProfilePhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UploadProfilePhotocontroller>(UploadProfilePhotocontroller());
  }
}
