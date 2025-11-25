// import 'package:flutter/foundation.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AppStorage {
//   static const _secure = FlutterSecureStorage();

//   /// Write key
//   static Future<void> write(String key, String value) async {
//     if (kIsWeb) {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString(key, value);
//     } else {
//       await _secure.write(key: key, value: value);
//     }
//   }

//   /// Read key
//   static Future<String?> read(String key) async {
//     if (kIsWeb) {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString(key);
//     } else {
//       return _secure.read(key: key);
//     }
//   }
// }
