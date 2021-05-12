import 'package:listar_flutter/models/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Application {
  static bool debug = false;
  static String version = '1.0.0';
  static SharedPreferences preferences;
  static UserModel user;
  static String pushToken;

  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
