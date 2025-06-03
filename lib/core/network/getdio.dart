import 'package:dio/dio.dart';
import 'package:skillswap1/core/constant%20values/num_values.dart';
import 'package:skillswap1/core/constant%20values/str_values.dart';
class Getdio {
  final Dio dio;
  Getdio({required this.dio}){
    dio.options.baseUrl=ConstStrValues.baseurl;
    dio.options.sendTimeout=Duration(seconds: NumValues.send_request_timeout);
    dio.options.receiveTimeout=Duration(seconds: NumValues.receive_response_timeout);
  }
}