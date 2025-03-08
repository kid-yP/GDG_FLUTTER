import 'dart:io';
import 'domain/entities/Product.dart';
import 'domain/usecases/view_all_products.dart';
import 'domain/usecases/view_product.dart';
import 'domain/usecases/create_product.dart';
import 'domain/usecases/update_product.dart';
import 'domain/usecases/delete_product.dart';

void main() {
  // Initialize product list
  final products = <Product>[];

  // Initialize use cases
  final viewAllProducts = ViewAllProductsUsecase(products);
  final viewProduct = ViewProductUsecase(products);
  final createProduct = CreateProductUsecase(products);
  final updateProduct = UpdateProductUsecase(products);
  final deleteProduct = DeleteProductUsecase(products);

  while (true) {
    print('\n1. View All Products');
    print('2. View Product');
    print('3. Create Product');
    print('4. Update Product');
    print('5. Delete Product');
    print('6. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1': // View all products
        viewAllProducts(null).forEach(print);
        break;

      case '2': // View a specific product
        stdout.write('Enter product ID: ');
        int? id = int.tryParse(stdin.readLineSync() ?? '');
        if (id != null) {
          print(viewProduct(id) ?? 'Product not found.');
        } else {
          print('Invalid ID.');
        }
        break;

      case '3': // Create a new product
        stdout.write('Enter product ID: ');
        int id = int.parse(stdin.readLineSync()!);
        stdout.write('Enter product name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter product description: ');
        String description = stdin.readLineSync()!;
        stdout.write('Enter product image URL: ');
        String imageUrl = stdin.readLineSync()!;
        stdout.write('Enter product price: ');
        double price = double.parse(stdin.readLineSync()!);

        createProduct(Product(
          id: id,
          name: name,
          description: description,
          imageUrl: imageUrl,
          price: price,
        ));
        break;

      case '4': // Update an existing product
        stdout.write('Enter product ID to update: ');
        int id = int.parse(stdin.readLineSync()!);
        stdout.write('Enter updated product name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter updated product description: ');
        String description = stdin.readLineSync()!;
        stdout.write('Enter updated product image URL: ');
        String imageUrl = stdin.readLineSync()!;
        stdout.write('Enter updated product price: ');
        double price = double.parse(stdin.readLineSync()!);

        updateProduct(Product(
          id: id,
          name: name,
          description: description,
          imageUrl: imageUrl,
          price: price,
        ));
        break;

      case '5': // Delete a product
        stdout.write('Enter product ID to delete: ');
        int? id = int.tryParse(stdin.readLineSync() ?? '');
        if (id != null) {
          deleteProduct(id);
        } else {
          print('Invalid ID.');
        }
        break;

      case '6': // Exit the application
        print('Exiting...');
        return;

      default:
        print('Invalid option. Please try again.');
        break;
    }
  }
}
