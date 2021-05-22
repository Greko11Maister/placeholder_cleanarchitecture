class Env {
  final EnvMode m;
  Env(this.m);

  static final String pathUrlImage = "https://api.yourmarket.app";
  static final String pathUrlAws = "https://your-market-empresa.s3.amazonaws.com";

  static final String _apiProduction = "https://jsonplaceholder.typicode.com";
  static final String _apiSandbox = "https://jsonplaceholder.typicode.com";
  static final String _apiLocal = "https://jsonplaceholder.typicode.com";

  String? get api {
    switch (m) {
      case EnvMode.production:
        return _apiProduction;
        break;
      case EnvMode.sandbox:
        return _apiSandbox;
        break;
      case EnvMode.local:
        return _apiLocal;
        break;
      default:
        return null;
    }
  }
}

enum EnvMode {
  production,
  sandbox,
  local,
}
