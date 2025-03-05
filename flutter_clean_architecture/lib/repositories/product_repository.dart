import 'package:ecommerce_app/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<product>> viewAllProducts();
  Future<product?> viewProduct(String id);
  Future<void> addProduct(product product);
  Future<void> editProduct(product product);
  Future<void> deleteProduct(String id);
}
