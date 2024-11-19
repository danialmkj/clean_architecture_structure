import 'package:dartz/dartz.dart';
import 'package:mattab/src/common/failure.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, void>> login(String email, String password);
}
