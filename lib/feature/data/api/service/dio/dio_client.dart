
import '../../../../../core/endpoints/constance.dart';
import 'package:dio/dio.dart';

const String url = Constance.URL;

Dio buildDioClient(){
  final _dio = Dio()
      ..options = BaseOptions(
        baseUrl: url,
        responseType: ResponseType.json,
      );
  return _dio;
}