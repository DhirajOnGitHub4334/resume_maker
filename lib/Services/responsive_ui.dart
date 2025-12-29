import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({
    super.key,
    required this.mobile,
    this.tablet,
    required this.web,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget web;

  // For Mobile Screen
  static bool isMobile(BuildContext context) => Get.width < 850;

  // For Tablet Screen
  static bool isTablet(BuildContext context) =>
      (Get.width >= 850 && Get.width < 1100);

  // For Web Screen
  static bool isWeb(BuildContext context) => Get.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final _size = Get.size;

    if (_size.width >= 1100) {
      return web; //For Web
    } else if (_size.width >= 850 && _size.width < 1100 && tablet != null) {
      return tablet!; //For Tablet
    } else {
      return mobile; //For Mobile
    }
  }
}
