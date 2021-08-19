import 'dart:async';

import 'package:dio/dio.dart';
import 'package:number_game/utils/common.dart';
import 'package:number_game/utils/methods.dart';

class Request {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get(String path, {
    Map<String, dynamic> queryParameters,
  }) async {
    Map<String, dynamic> responseData = Map();

    try {
      Response response = await _dio.get(
        Uri.encodeFull(path),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        queryParameters: queryParameters,
      );

      responseData = response.data;
    } on DioError catch (e) {
      if (e.response == null) throw e;
      if (e.response.statusCode == null) throw e;
      if (e.response.statusCode == 401) {
        log("unauthorized");
        Common.toast("Strings.sessionExpired");

      } else
        throw e;
    }
    return responseData;
  }
}
