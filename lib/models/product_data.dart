enum ProductType { accessories, clothing }

class Product {
  ProductType type;
  double price;
  String name;

  Product({required this.price, required this.type, required this.name});
}

List<Product> listProduct = [
  // --- Accessories (8 ชิ้นแรกคละกัน) ---
  Product(name: "Quartz Watch", price: 1200.0, type: ProductType.accessories),
  Product(name: "Golden Ring", price: 2500.0, type: ProductType.accessories),
  Product(name: "Sunglasses", price: 450.0, type: ProductType.accessories),
  Product(name: "Leather Belt", price: 890.0, type: ProductType.accessories),

  // --- Clothing ---
  Product(name: "Oversize T-Shirt", price: 350.0, type: ProductType.clothing),
  Product(name: "Slim Fit Jeans", price: 1290.0, type: ProductType.clothing),
  Product(name: "Hoodie Jacket", price: 1500.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
  Product(name: "Cotton Shorts", price: 420.0, type: ProductType.clothing),
];
