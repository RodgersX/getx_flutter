import 'package:flutter_getx/pages/add/add_controller.dart';
import 'package:flutter_getx/pages/dashboard/dashboard_controller.dart';
import 'package:flutter_getx/pages/home/home_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AddController>(() => AddController());
  }
}
