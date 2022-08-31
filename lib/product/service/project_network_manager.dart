import 'package:dio/dio.dart';

class ProjectNetworkManager {
  ProjectNetworkManager._() {
    _dio = Dio(
      BaseOptions(baseUrl: 'pup.dev'),
    );

    _dio.options = BaseOptions();
  }

  late final Dio _dio;

  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get service => _dio;

  addBaseHeadertoToken(String token) {
    _dio.options = _dio.options.copyWith(headers: {'Authorization': token});
  }
}

class DurationManager {
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) {
      return _manager!;
    }
    _manager = DurationManager();
    return _manager!;
  }
}
