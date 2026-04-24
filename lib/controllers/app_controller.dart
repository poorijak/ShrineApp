import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shrine_app/models/product_data.dart';

class AppController extends GetxController {
  RxString selectedType = "all".obs;

  void chageType(String type) {
    selectedType.value = type;
  }

  List<Product> get filteredProducts {
    if (selectedType.value == "all") {
      return listProduct;
    } else {
      return listProduct
          .where((p) => p.type.name == selectedType.value)
          .toList();
    }
  }
}
