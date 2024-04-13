import 'package:shared_preferences/shared_preferences.dart';
class SharedPreference{
  static const loginUser='login';

 //get data
  static Future<bool?> getLogin()async
  {
    var preferences=await SharedPreferences.getInstance();
    return  preferences.getBool(loginUser);
  }
  // save data
  static Future<bool> setLogin(bool check)async
  {
    var preferences=await SharedPreferences.getInstance();
    return await preferences.setBool(loginUser, check);
  }

static Future<void> storeStringList(String key, List<String> value) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setStringList(key, value);
}

static Future<List<String>?> getStringList(String key) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getStringList(key);
}

}