import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login_controler.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:get/get.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(LoginController());
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Row(children: [
          Expanded(
              child: SizedBox(
                  height: screenHeight * 0.4,
                  child: Image.asset('assets/images/login.png',
                      fit: BoxFit.cover))),
        ]),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 24),
            child: Text("Welcome",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    color: HexColor("#000000"))),
          )
        ]),
        Row(children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 40, left: 24, right: 24),
              child: SizedBox(
                height: 48,
                child: TextField(
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: HexColor("#C5C6CC"),
                          width: 1,
                        )),
                    hintText: "Email Address",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: HexColor("#8F9098"),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 16,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: HexColor("#006FFD"), width: 2),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
        PasswordInput()
      ],
    )));
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
    return Row(children: [
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: SizedBox(
              height: 48,
              child: Obx(() {
                return TextField(
                  obscureText: controller.state_password.value,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: HexColor("#C5C6CC"),
                            width: 1,
                          )),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: HexColor("#8F9098"),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 16,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: HexColor("#006FFD"), width: 2),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: IconButton(
                          icon: Icon(
                              controller.state_password.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: HexColor("#C5C6CC")),
                          onPressed: () {
                            controller.state_show_password();
                          },
                        ),
                      )),
                );
              })),
        ),
      )
    ]);
  }
}
