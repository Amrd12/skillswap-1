import 'package:dio/dio.dart';
import 'package:skillswap1/core/constant%20values/str_values.dart';
class DioService {
  static final DioService _instance = DioService._internal();
  late final Dio dio;

  // Private constructor
  DioService._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: BaseUrl.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },

      ),
    );
  }

  // Factory constructor to return the same instance
  factory DioService() => _instance;
}