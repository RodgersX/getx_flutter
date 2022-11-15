import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/add/add_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// ignore: must_be_immutable
class AddPage extends GetView<AddController> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(controller.counter.value.toString())),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("Increase"),
                onPressed: () => controller.increaseCoutner(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
