import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/add/add_page.dart';
import 'package:flutter_getx/pages/dashboard/dashboard_controller.dart';
import 'package:flutter_getx/pages/home/home_page.dart';
import 'package:flutter_getx/pages/messages/messages_page.dart';
import 'package:flutter_getx/pages/users/users_page.dart';
import 'package:get/get.dart';

import '../../navigation/custom_animated_bottom_bar.dart';

class MyDashBoard extends GetView<DashboardController> {
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomePage(),
            UsersPage(),
            MessagesPage(),
            AddPage(),
          ],
        ),
      ),
      bottomNavigationBar: CustomAnimatedBottomBar(
        containerHeight: 70,
        backgroundColor: Colors.white,
        selectedIndex: controller.tabIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: controller.changeTabIndex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            activeColor: Colors.purpleAccent,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'Messages ',
            ),
            activeColor: Colors.pink,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text('Counter'),
            activeColor: Colors.blue,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
