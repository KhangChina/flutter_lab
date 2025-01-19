
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  Rx<bool> state_create_password= true.obs;
  Rx<bool> state_confirm_password = true.obs;
  Rx<bool> state_check = false.obs;

  void state_show_create_password() {
    state_create_password.value =! state_create_password.value;
  }
   void state_confirm_password_password() {
    state_confirm_password.value =! state_confirm_password.value;
  }
  void state_check_policy()
  {
    state_check.value =! state_check.value;
  }
  
}