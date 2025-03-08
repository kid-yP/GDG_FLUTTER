import 'usecase.dart';
import '../entities/Product.dart';

class ViewAllProductsUsecase extends UseCase<List<Product>, void> {
  final List<Product> _products;

  ViewAllProductsUsecase(this._products);

  @override
  List<Product> call(void params) {
    return _products; // Return the list of all products
  }
}
