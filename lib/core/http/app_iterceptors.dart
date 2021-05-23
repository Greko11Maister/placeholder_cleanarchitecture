import 'package:dio/dio.dart';


class AppInterceptors extends Interceptor {
  @override
  Future<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    List noRequiresAuthentication = [
      'api/auth/login',
    ];

    bool requiresToken = !noRequiresAuthentication.contains(options.path);
    if (requiresToken) {
      String token = await getToken();
      options.headers.addAll({"Authorization": "Bearer $token"});

    }
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    switch (err.type) {
      case DioErrorType.response:
        if (err.response?.statusCode == 401) {
        }
        break;
      default:
        break;
    }

    return super.onError(err, handler);
  }

  Future<String> getToken() async {
    return "";
  }
}
