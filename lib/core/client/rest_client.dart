import 'package:dio/dio.dart';

class RestClient{

  final Dio _dio = Dio();

  static final RestClient _instance = RestClient._internal();

  RestClient._internal() {
    _dio.interceptors.add(LogInterceptor(request: false, requestHeader: false, responseHeader: true, responseBody: false, requestBody: false));
  }

  factory RestClient() => _instance;

  Dio get getDio => _dio;
}