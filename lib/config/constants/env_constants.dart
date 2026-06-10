class EnvConstants {
  EnvConstants._internal();

  static const String serverApi = 'https://jsonplaceholder.typicode.com';

  static EnvConstants? _instance;

  static EnvConstants? get instance { 
    _instance ??= EnvConstants._internal();
    return _instance;
  }

  static void dispose() {
    _instance = null;
  }
}
