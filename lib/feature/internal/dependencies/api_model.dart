import 'package:internet_magazine/feature/data/api/api_util.dart';
import 'package:internet_magazine/feature/data/api/service/connection_service.dart';

class ApiModel {
  static ApiUtil? _apiUtil;
  static ApiUtil? apiUtil(){
    _apiUtil ??= ApiUtil(ConnectionService());
    return _apiUtil;
  }
}