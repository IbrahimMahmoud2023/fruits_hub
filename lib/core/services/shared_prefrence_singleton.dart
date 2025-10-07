import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences sharedPreferences;
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static void setBool(String key, bool value) {
    sharedPreferences.setBool(key, value);
  }

  static bool getBool(String key) {
   return sharedPreferences.getBool(key) ?? false;
  }
}
