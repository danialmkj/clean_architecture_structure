import 'package:dartz/dartz.dart';
import 'package:mattab/src/common/failure.dart';
import 'package:mattab/src/features/feature_authentication/domain/repositories/autentication_repository.dart';

class SignIn {
  SignIn(this._repository);
  final AuthenticationRepository _repository;

  Future<Either<Failure, void>> execute(String email, String password) async {
    return await _repository.login(email, password);
  }
}
