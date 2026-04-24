import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shrine_app/main_layout.dart';
import 'package:shrine_app/pages/home_screen.dart';
import 'package:shrine_app/pages/login_screen.dart';
import 'package:shrine_app/themes/colors.dart';
import 'package:shrine_app/themes/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      theme: AppTheme.lightTheme,
      getPages: [
        GetPage(
          name: "/",
          page: () => MainLayout(child: HomeScreen()),
        ),
        GetPage(name: "/login", page: () => LoginScreen()),
      ],
    );
  }
}
