import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:shrine_app/pages/home_screen.dart';
import 'package:shrine_app/themes/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/diamond.png", width: 150),
            TextFormField(
              autofocus: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              autofocus: false,
              obscureText: true,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                fillColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: primary,
                      width: 2,
                    ), // กำหนดสีและขนาดขอบ
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text("Cancel"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.off(HomeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Ink(
                    child: Container(
                      height: 20,
                      alignment: Alignment.center,
                      child: Text("Next"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
