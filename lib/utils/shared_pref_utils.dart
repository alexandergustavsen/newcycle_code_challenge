import 'package:shared_preferences/shared_preferences.dart';

mixin SharedPrefsUtils {
  static Future<void> setStringValue(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String?> getStringValue(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? stringValue = prefs.getString(key);
    return stringValue;
  }
}

mixin SharedPrefsKey {
  static const String inventory = 'inventory_key';
}
