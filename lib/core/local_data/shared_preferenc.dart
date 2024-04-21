import 'package:shared_preferences/shared_preferences.dart';
class SharedPreference{
  static const loginUser='login';
  static const checkLevel='category';
  static const checkClicks='click';

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

static Future<bool> storeStringList( String key,List<String> updatelist) async {
  final prefs = await SharedPreferences.getInstance();
 return await prefs.setStringList(key, updatelist);
}

static Future<List<String>> getStringList(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final List<String>? existList = prefs.getStringList(key);
  return existList ?? [];
}
static Future<void> addValue(String key,String newValue) async {
 final List<String>  existingList = await getStringList(key);
  if(!existingList.contains(newValue))
  {
    existingList.add(newValue);
    storeStringList(key,existingList);
  }
}

}