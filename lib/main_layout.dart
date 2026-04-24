import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/utils.dart';
import 'package:shrine_app/controllers/app_controller.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppController());

    return Scaffold(
      appBar: AppBar(title: const Text('Product')),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text("All"),
              onTap: () {
                controller.chageType("all");
                Get.back();
              },
            ),
            ListTile(
              title: Text("Accessories"),
              onTap: () {
                controller.chageType("accessories");
                Get.back();
              },
            ),
            ListTile(
              title: Text("Clothing"),
              onTap: () {
                controller.chageType("clothing");
                Get.back();
              },
            ),
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(10), child: child),
    );
  }
}
