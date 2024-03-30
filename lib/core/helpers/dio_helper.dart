import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: "https://api.escuelajs.co/api/v1/",
      receiveDataWhenStatusError: true,
      contentType: "application/json",
    ));
  }

  static Future<Response> getData({
    required String path,
    required Map<String, dynamic> query,
  }) async {
    try {
      Response response = await dio.get(path, queryParameters: query);
      return response;
    } on DioException catch (e) {
      return e.response!;
    }
  }
}
