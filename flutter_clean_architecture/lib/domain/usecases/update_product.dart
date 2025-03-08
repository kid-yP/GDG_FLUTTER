import 'usecase.dart';
import '../entities/Product.dart';

class UpdateProductUsecase extends UseCase<bool, Product> {
  final List<Product> _products;

  UpdateProductUsecase(this._products);

  @override
  bool call(Product updatedProduct) {
    final index =
        _products.indexWhere((product) => product.id == updatedProduct.id);
    if (index != -1) {
      _products[index] = updatedProduct;
      print('Product updated: $updatedProduct');
      return true;
    }
    print('Product not found.');
    return false;
  }
}
