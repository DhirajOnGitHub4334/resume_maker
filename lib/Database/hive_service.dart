import 'package:hive/hive.dart';

import '../Services/local_storage_key.dart';
import 'theme_adapter.dart';

class HiveService {
  static late Box _userBox;
  //Store ThemeDataSetUp
  static late Box<ThemeDataItem> _themeBox;

  Future<void> init() async {
    _themeBox = await Hive.openBox("theme_box");
    _userBox = await Hive.openBox("userBox");
  }

  //SET Data
  static void put(String key, dynamic value) async {
    await _userBox.put(key, value);
  }

  //GET Data
  static dynamic get(String key) {
    return _userBox.get(key);
  }

  //DELETE PARTICULER DATA
  static Future<void> delete(String key) async {
    await _userBox.delete(key);
  }

  //DELETE All Data
  static Future<void> clear() async {
    await _userBox.clear();
  }

  //ThemeData add
  static void addThemeData(ThemeDataItem data) async {
    await _themeBox.put(localStorageKey.THEMEDATASETUP, data);
  }

  //ThemeData get
  static ThemeDataItem? getThemeData() {
    return _themeBox.get(localStorageKey.THEMEDATASETUP);
  }
}
