import 'package:freelanceproject/src/controllers/Upload_details_first_controller.dart';
import 'package:get/get.dart';


class UploaddetailsfirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UploaddetailsfirstController>(UploaddetailsfirstController());
  }
}
