import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/products/products_list.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  RxList<dynamic> itemsProducts = <dynamic>[
    {
      "image": "assets/images/onboarding_images.png",
      "name": "Item 1",
      "price": "100.0",
      "description": "Description for Item 1",
      "category": "Category 1",
    },
    {
      "image": "assets/images/onboarding_images.png",
      "name": "Item 2",
      "price": "200.0",
      "description": "Description for Item 2",
      "category": "Category 2",
    },
    {
      "image": "assets/images/onboarding_images.png",
      "name": "Item 3",
      "price": "300.0",
      "description": "Description for Item 3",
      "category": "Category 3",
    },
     {
      "image": "assets/images/onboarding_images.png",
      "name": "Item 4",
      "price": "300.0",
      "description": "Description for Item 4",
      "category": "Category 3",
    }
  ].obs;

  void update_current_page_changed(index) {
    currentPageIndex.value = index;
  }
  void nav_to_products_detail()
  {
     Get.to(() => product_list_screens()); 

  }
}
