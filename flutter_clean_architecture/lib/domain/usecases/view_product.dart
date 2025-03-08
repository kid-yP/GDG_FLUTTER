import 'usecase.dart';
import '../entities/Product.dart';

class ViewProductUsecase extends UseCase<Product?, int> {
  final List<Product> _products;

  ViewProductUsecase(this._products);

  @override
  Product? call(int id) {
    return _products.firstWhere(
      (product) => product.id == id,
      orElse: () => Product(
        id: -1,
        name: 'Unknown',
        description: 'No description available',
        imageUrl: '',
        price: 0.0,
      ),
    );
  }
}
