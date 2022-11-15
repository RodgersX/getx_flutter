import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_getx/my_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Books',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.increment();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "${controller.books}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Pens',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.incrementPen();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "${controller.pens}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.decrementPen();
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 130,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade900,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () => Get.toNamed('/total'),
                    child: Text(
                      "Total",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
