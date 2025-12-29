import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'theme_adapter.g.dart';

@HiveType(typeId: 0)
class ThemeDataItem {
  ThemeDataItem({required this.appTheme, required this.primaryColor});

  @HiveField(0)
  final String appTheme;

  @HiveField(1)
  final int primaryColor;

  Color get primaryColorData => Color(primaryColor);

  factory ThemeDataItem.fromUserSelection({
    required String appTheme,
    required Color primaryColor,
  }) {
    return ThemeDataItem(appTheme: appTheme, primaryColor: primaryColor.value);
  }
}
