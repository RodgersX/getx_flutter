import 'package:get/get.dart';

class DashboardController extends GetxController {
  var _tabIndex = 1.obs;

  int get tabIndex => _tabIndex.value;

  void changeTabIndex(int index) {
    _tabIndex.value = index;
    print(_tabIndex.value);
  }
}
