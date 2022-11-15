import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var _books = 0.obs;
  var _pens = 0.obs;

  RxInt get books => _books;
  RxInt get pens => _pens;
  int get sum => _books.value + pens.value;

  increment() {
    _books.value++;
  }

  decrement() {
    if (_books.value <= 0) {
      Get.snackbar("Buying Books", "Cannot be zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 2));
    } else {
      _books.value--;
    }
  }

  incrementPen() {
    _pens.value++;
  }

  decrementPen() {
    if (_pens.value <= 0) {
      Get.snackbar("Buying Pens", "Cannot be zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 2));
    } else {
      _pens.value--;
    }
  }
}
