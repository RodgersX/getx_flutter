import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/add/add_controller.dart';
import 'package:get/get.dart';

class UsersPage extends StatelessWidget {
  final AddController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Users Numbers",
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
              Obx(
                () => Text(
                  controller.counter.value.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
