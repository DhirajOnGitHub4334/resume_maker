import 'package:hive/hive.dart';

import 'theme_adapter.dart';

class HiveAdapter {
  static void registerAdapter() {
    //Theme data Adapter
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(ThemeDataItemAdapter());
    }
  }
}
