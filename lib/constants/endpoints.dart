
// here will write all endpoints
class LightEndpoints {
  LightEndpoints._();

  static String _baseUrl = '';

  // we must init with env var to get (BASE CODE)

  static void initialize(String envBaseUrl) {
    _baseUrl = envBaseUrl;
  }

  static String login = '${_baseUrl}users/login';
}
