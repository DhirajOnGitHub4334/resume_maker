import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralSafeAreaWidget extends StatelessWidget {
  const GeneralSafeAreaWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red, Colors.red, Colors.red],
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
