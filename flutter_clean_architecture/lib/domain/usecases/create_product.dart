import 'usecase.dart';
import '../entities/Product.dart';

class CreateProductUsecase extends UseCase<void, Product> {
  final List<Product> _products;

  CreateProductUsecase(this._products);

  @override
  void call(Product newProduct) {
    _products.add(newProduct);
    print('Product created: $newProduct');
  }
}
