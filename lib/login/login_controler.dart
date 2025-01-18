import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  Rx<bool> state_password= true.obs;
  Rx<bool> validate = true.obs;
  void state_show_password() {
    state_password.value =! state_password.value;
  }
}