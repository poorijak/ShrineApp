import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/utils.dart';
import 'package:shrine_app/controllers/app_controller.dart';
import 'package:shrine_app/themes/colors.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AppController>();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: controller.filteredProducts.length,
      itemBuilder: (context, index) {
        final item = controller.filteredProducts[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          alignment: Alignment.center,
                          color: primaryLight,
                          child: Text(item.name),
                        ),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("${item.price}฿"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),

                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        item.type.name.toUpperCase(),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
