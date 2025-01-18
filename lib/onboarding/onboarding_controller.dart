import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/login/login_screens.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void update_current_page_changed(index) {
    currentPageIndex.value = index;
  }

  void next_page() {
    if (currentPageIndex.value >= 2) {
      Get.off(() => LoginScreens());
      return;
    }

    currentPageIndex.value += 1;
    pageController.animateToPage(
      currentPageIndex.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
