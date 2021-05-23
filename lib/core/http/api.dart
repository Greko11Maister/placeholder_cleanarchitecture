
import 'package:dio/dio.dart';
import 'package:placeholder_cleanarchitecture/core/env/env.dart';
import '../../injection_container.dart';
import 'app_iterceptors.dart';

class ApiProvider {
  final String? _baseApiUrl = sl<Env>().api;
  Dio? dio;

  ApiProvider() {
    dio = Dio(BaseOptions(baseUrl: _baseApiUrl.toString()));
    dio?.interceptors.add(AppInterceptors());
  }
}
