import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:dio/dio.dart';

class ApiServise {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServise(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respons = await dio.get('$_baseUrl$endPoint');

    return respons.data;
  }
}
