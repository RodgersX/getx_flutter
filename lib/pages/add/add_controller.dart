import 'package:get/get.dart';

class AddController extends GetxController {
  var _counter = 0.obs;

  RxInt get counter => _counter;

  void increaseCoutner() {
    _counter.value++;
  }
}
