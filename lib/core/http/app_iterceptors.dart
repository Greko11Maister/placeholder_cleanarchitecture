import 'package:dio/dio.dart';


class AppInterceptors extends Interceptor {
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    List noRequiresAuthentication = [
      'api/auth/login',
    ];

    bool requiresToken = !noRequiresAuthentication.contains(options.path);
    if (requiresToken) {
      String token = await getToken();
      options.headers.addAll({"Authorization": "Bearer $token"});

      return options;
    }
  }

  @override
  Future onError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.RESPONSE:
        if (dioError.response.statusCode == 401) {
          print("dioError.response.request.path: ${dioError.response.request.path}");
          if (dioError.response.request.path != "/login" && dioError.response.request.path != "code_company_page") {}
        }
        break;
      default:
        break;
    }

    print("\t\terrorDescription:\t $dioError");
    return super.onError(dioError);
  }

  Future<String> getToken() async {
    return "";
  }

  @override
  Future<dynamic> onResponse(Response response) async {
    if (response.data is Map<String, dynamic> && response.data["error"] != null) {
      var $data = response.data as Map<String, dynamic>;
      var error = DioError(request: response.request, error: $data["error"]);
      print($data);
      return Future.error(error);
    }
  }
}
