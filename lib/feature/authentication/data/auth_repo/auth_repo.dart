import 'package:dartz/dartz.dart';
import 'package:shagaf/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Error, Unit>> signUp({
    required String username,
    required String birthdate,
    required String phone,
    required String password,
    required String email,
  });

  Future<Either<Error, Unit>> verifyEmail({
    required String email,
    required String code,
  });
}
