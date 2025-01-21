import 'package:get/get.dart';


class MainController extends GetxController {
  static MainController get instance => Get.find();
  Rx<int> index_tab = 0.obs;

  setStateTab(index)
  {
     index_tab.value = index;
  }
}