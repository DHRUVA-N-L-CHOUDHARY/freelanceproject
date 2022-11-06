import 'package:freelanceproject/src/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashboardPageController>(DashboardPageController());
  }
}
