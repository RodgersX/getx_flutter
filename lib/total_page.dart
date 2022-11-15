import 'package:flutter/material.dart';
import 'package:flutter_getx/my_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);

  MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Total items',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            SizedBox(height: 10),
            Obx(() => Text(
                  controller.sum.toString(),
                  style: TextStyle(fontSize: 26, color: Colors.redAccent),
                )),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade900,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Get.back(),
                child: Text(
                  "Go Back",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
