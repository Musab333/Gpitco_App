import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  saveString(key, value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  getString(key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var value = preferences.getString(key);
    return value;
  }

  saveBool(key, value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(key, value);
  }

  getBool(key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var value = preferences.getBool(key);
    return value;
  }

  removeData(key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(key);
  }
}
