import 'dart:io';
import 'models/Product.dart';
import 'models/ProductManager.dart';

void main() {
  ProductManager productManager = ProductManager();

  while (true) {
    print('1. Add Product');
    print('2. View All Products');
    print('3. View Product');
    print('4. Edit Product');
    print('5. Delete Product');
    print('6. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter product name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter product description: ');
        String description = stdin.readLineSync()!;
        stdout.write('Enter product price: ');
        double price = double.parse(stdin.readLineSync()!);
        productManager.addProduct(Product(name, description, price));
        break;
      case '2':
        productManager.viewAllProducts();
        break;
      case '3':
        stdout.write('Enter product index to view: ');
        int index = int.parse(stdin.readLineSync()!);
        productManager.viewProduct(index);
        break;
      case '4':
        stdout.write('Enter product index to edit: ');
        int editIndex = int.parse(stdin.readLineSync()!);
        stdout.write('Enter new product name: ');
        String newName = stdin.readLineSync()!;
        stdout.write('Enter new product description: ');
        String newDescription = stdin.readLineSync()!;
        stdout.write('Enter new product price: ');
        double newPrice = double.parse(stdin.readLineSync()!);
        productManager.editProduct(
            editIndex, newName, newDescription, newPrice);
        break;
      case '5':
        stdout.write('Enter product index to delete: ');
        int deleteIndex = int.parse(stdin.readLineSync()!);
        productManager.deleteProduct(deleteIndex);
        break;
      case '6':
        print('Exiting...');
        return;
      default:
        print('Invalid option. Please try again.');
    }
  }
}
