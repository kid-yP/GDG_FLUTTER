import 'Product.dart';

class ProductManager {
  List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
    print('Product added: ${product.name}');
  }

  void viewAllProducts() {
    if (_products.isEmpty) {
      print('No products available.');
      return;
    }
    for (var product in _products) {
      print(product);
    }
  }

  void viewProduct(int index) {
    if (index < 0 || index >= _products.length) {
      print('Product not found.');
      return;
    }
    print(_products[index]);
  }

  void editProduct(int index, String name, String description, double price) {
    if (index < 0 || index >= _products.length) {
      print('Product not found.');
      return;
    }
    _products[index].name = name;
    _products[index].description = description;
    _products[index].price = price;
    print('Product updated: ${_products[index].name}');
  }

  void deleteProduct(int index) {
    if (index < 0 || index >= _products.length) {
      print('Product not found.');
      return;
    }
    print('Product deleted: ${_products[index].name}');
    _products.removeAt(index);
  }
}
