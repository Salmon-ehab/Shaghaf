import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService(this.dio);
  final String _baseUrl = 'https://shagaf-bl7b.onrender.com';

  Future<Map<String, dynamic>> get(
      {required String endPoint, required Map<String, dynamic> data}) async {
    Response response = await dio.get("$_baseUrl$endPoint", data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required Map<String, dynamic> data}) async {
    Response response = await dio.post("$_baseUrl$endPoint", data: data);
    return response.data;
  }
}
