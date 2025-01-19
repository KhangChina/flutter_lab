import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_up/sign_up_controller.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class sign_up_screens extends StatelessWidget {
  const sign_up_screens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
      Row(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 24, left: 24),
              child: Text("Sign up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      color: HexColor("#1F2024")))),
        ],
      ),
      Row(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8, left: 24),
              child: Text("Create an account to get started",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: HexColor("#71727A")))),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Text("Name",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        color: HexColor("#1F2024")))),
          )
        ],
      ),
      Row(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 8, left: 24, right: 24),
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
                  hintText: "Name",
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
        ),
      ]),
      Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 16, left: 24, right: 24),
                child: Text("Email Address",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        color: HexColor("#1F2024")))),
          )
        ],
      ),
      Row(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 16, left: 24, right: 24),
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
                  hintText: "name@email.com",
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
        ),
      ]),
      Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 16, left: 24, right: 24),
                child: Text("Password",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        color: HexColor("#1F2024")))),
          )
        ],
      ),
      PasswordCreate(),
      PasswordConfirm(),
      Padding(
        padding: EdgeInsets.only(top: 24, left: 23),
        child: Row(
          children: [
            CheckBoxRounded(
              size: 30,
              borderWidth: 0,
              borderColor: HexColor("#FFFFFF"),
              isChecked: controller.state_check_policy.value,
              onTap: (bool? value) {
                controller.state_check_policy_change();
              },
              checkedColor: HexColor("#FFFFFF"),
              uncheckedWidget: Center(
                  child: Image.asset("assets/images/uncheck.png",
                      width: 24, height: 24, fit: BoxFit.cover)),
              checkedWidget: Center(
                  child: Image.asset("assets/images/check.png",
                      width: 24, height: 24, fit: BoxFit.cover)),
            ),
            SizedBox(width: 12),
            Expanded(
                child: RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 16, color: HexColor("#8F9098")), // Style mặc định
                children: [
                  TextSpan(
                    text: "I've read and agree with the ",
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Hành động khi ấn vào "Terms and Conditions"
                        print("Terms and Conditions clicked!");
                      },
                    text: "Terms and Conditions",
                    style: TextStyle(
                        color: HexColor("#006FFD"),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " and the ",
                  ),
                  TextSpan(
                    text: "Privacy Policy.",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Hành động khi ấn vào "Terms and Conditions"
                        print("Privacy Policy.");
                      },
                    style: TextStyle(
                        color: HexColor("#006FFD"),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Obx(() {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#006FFD"),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      minimumSize: Size(double.infinity, 48),
                    ),
                    onPressed: controller.state_check_policy.value
                        ? () {
                            controller.nav_to_otp();
                          }
                        : null,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          color: HexColor("#FFFFFF")),
                    ),
                  );
                })),
          )
        ],
      ),
    ]))));
  }
}

class PasswordCreate extends StatelessWidget {
  const PasswordCreate({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    return Row(children: [
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(top: 6, left: 24, right: 24),
          child: SizedBox(
              height: 48,
              child: Obx(() {
                return TextField(
                  obscureText: controller.state_create_password.value,
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
                    hintText: "Create a password",
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
                            controller.state_create_password.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: HexColor("#C5C6CC")),
                        onPressed: () {
                          controller.state_show_create_password();
                        },
                      ),
                    ),
                  ),
                );
              })),
        ),
      )
    ]);
  }
}

class PasswordConfirm extends StatelessWidget {
  const PasswordConfirm({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    return Row(children: [
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(top: 16, left: 24, right: 24),
          child: SizedBox(
              height: 48,
              child: Obx(() {
                return TextField(
                  obscureText: controller.state_confirm_password.value,
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
                      hintText: "Confirm password",
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
                              controller.state_confirm_password.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: HexColor("#C5C6CC")),
                          onPressed: () {
                            controller.state_confirm_password_password();
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
