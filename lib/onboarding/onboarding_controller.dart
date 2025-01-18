import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void update_current_page_changed(index) {
    currentPageIndex = index;
  }

  void next_page(index) {
    //currentPageIndex = index;
  }
}
