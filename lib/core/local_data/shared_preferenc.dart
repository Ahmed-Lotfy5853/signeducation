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
}