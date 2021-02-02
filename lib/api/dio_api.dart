import 'dart:convert';

import 'package:dio/dio.dart';

class DioApi {
  Dio dio;

  DioApi(String apiUrl) {
    dio = Dio();
    dio.options.baseUrl = apiUrl;
    dio.interceptors.add(InterceptorsWrapper(onRequest: _requestIntercept));
    dio.interceptors.add(InterceptorsWrapper(onResponse: _responseIntercept));
    dio.interceptors.add(InterceptorsWrapper(onError: _errorIntercept));
  }

  _requestIntercept(RequestOptions options) async {
    print(
        "REQUEST: ${options?.method}: ${options?.baseUrl}${options?.path} ${options?.queryParameters}");
    print(
        "BODY: ${(options?.data != null && !(options?.data is FormData)) ? json.encode(options?.data) : ""}");
    return options;
  }

  _responseIntercept(Response response) async {
    print("${response.request?.path} ${response?.data}");
    return response;
  }

  _errorIntercept(DioError error) async {
    print("${error.request?.path} ${error.response?.data}");
    return error;
  }
}
