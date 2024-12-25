import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shagaf/core/errors/failure.dart';
import 'package:shagaf/core/network/api_service.dart';
import 'package:shagaf/feature/authentication/data/auth_repo/auth_repo.dart';

class AuthRepoImplementation implements AuthRepo {
  final ApiService apiService;
  AuthRepoImplementation(this.apiService);

  @override
  Future<Either<Error, Unit>> signUp({
    required String username,
    required String birthdate,
    required String phone,
    required String password,
    required String email,
  }) async {
    try {
      var data = await apiService.post(endPoint: '/api/users/signup', data: {
        "username": username,
        "birthdate": birthdate,
        "phone": phone,
        "password": password,
        "email": email,
      });
      print(data.toString());
      return right(unit);
    } on DioException catch (e) {
      String errorMessage = e.response?.data["errors"][0]["message"] ?? "";
      print(errorMessage);
      return left(ServerError(error: errorMessage));
    } catch (e) {
      print(e.toString());
      return left(ServerError(error: e.toString()));
    }
  }

  @override
  Future<Either<Error, Unit>> verifyEmail(
      {required String email, required String code}) async {
    try {
      var data = await apiService.post(endPoint: '/api/users/verify', data: {
        "email": email,
        "code": code,
      });
      print(data.toString());
      return right(unit);
    } on DioException catch (e) {
      String errorMessage = e.response?.data["errors"][0]["message"] ?? "";
      print(errorMessage);

      return left(ServerError(error: e.toString()));
    } catch (e) {
      print(e.toString());
      return left(ServerError(error: e.toString()));
    }
  }
}
