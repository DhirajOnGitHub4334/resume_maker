import 'package:get/get.dart';

class FaqController extends GetxController {
  final expandedList = <bool>[false, false, false, false, false, false].obs;

  void toggle(int index) {
    expandedList[index] = !expandedList[index];
  }
}
