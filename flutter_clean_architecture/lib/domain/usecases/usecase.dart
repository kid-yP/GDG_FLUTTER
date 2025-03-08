// lib/domain/usecases/usecase.dart
abstract class UseCase<Type, Params> {
  Type call(Params params);
}
