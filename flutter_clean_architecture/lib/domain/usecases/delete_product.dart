import 'usecase.dart';
import '../entities/Product.dart';

class DeleteProductUsecase extends UseCase<bool, int> {
  final List<Product> _products;

  DeleteProductUsecase(this._products);

  @override
  bool call(int id) {
    final index = _products.indexWhere((product) => product.id == id);
    if (index != -1) {
      _products.removeAt(index);
      print('Product with ID $id deleted.');
      return true;
    }
    print('Product not found.');
    return false;
  }
}
