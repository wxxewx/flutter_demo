import 'package:shared_preferences/shared_preferences.dart';

Future<bool> setString(String key, String value, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.setString(_buildKey(uid, key), value);
}

Future<bool> setInt(String key, int value, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.setInt(_buildKey(uid, key), value);
}

Future<bool> setBool(String key, bool value, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.setBool(_buildKey(uid, key), value);
}

Future<bool> setDouble(String key, double value, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.setDouble(_buildKey(uid, key), value);
}

Future<bool> setStringList(String key, List<String> value, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.setStringList(_buildKey(uid, key), value);
}

Future<String> getString(String key, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.getString(_buildKey(uid, key));
}

Future<int> getInt(String key, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.getInt(_buildKey(uid, key));
}

Future<bool> getBool(String key, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.getBool(_buildKey(uid, key));
}

Future<double> getDouble(String key, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.getDouble(_buildKey(uid, key));
}

Future<List<String>> getStringList(String key, {String uid}) async {
  var instance = await SharedPreferences.getInstance();
  return instance.getStringList(_buildKey(uid, key));
}

String _buildKey(String uid, String key) => uid == null ? key : "${uid}_${key}";
