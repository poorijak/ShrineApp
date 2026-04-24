import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:shrine_app/controllers/app_controller.dart';
import 'package:shrine_app/main_layout.dart';
import 'package:shrine_app/pages/product_grid_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return MainLayout(child: ProductGridView());
  }
}
