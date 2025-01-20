
import 'package:flutter_application_1/sign_up/sign_up_screens.dart';
import 'package:get/get.dart';

import '../home/home_screens.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  Rx<bool> state_password= true.obs;
  Rx<bool> validate = true.obs;
  

  void state_show_password() {
    state_password.value =! state_password.value;
  }
  void router_sign_up(){
      Get.to(() => sign_up_screens());
  }
  void router_login()
  {
     Get.to(() => HomeScreens());
    
  }
}