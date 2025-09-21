import 'package:dio/dio.dart';

import '../constants/api_constants.dart';

class DioService {
  final Dio dio;

  DioService(this.dio) {
    dio.options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      headers: {'Content-Type': 'application/json', 'Accept': 'text/plain'},
    );
  }

  Future<List<dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? queryParams,
    Options? options,
  }) async {
    var response = await dio.get(
      endPoint,
      options: options,
      queryParameters: queryParams,
    );
    return response.data;
  }
}
