part of '../utils.dart';

class Config {
  const Config._();

  static Future<Config> get instance async {
    dotenv.load();
    return Config._();
  }

  static String _get(String key) => dotenv.env[key] ?? "";

  String get url => _get('DB_URL');
  String get key => _get('DB_KEY');
}
