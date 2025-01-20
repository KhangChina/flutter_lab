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
            child: Text("Welcome!",
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
        PasswordInput(),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(top: 16, left: 24),
            child: Text("Forgot password?",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    color: HexColor("#006FFD"))),
          )
        ]),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor("#006FFD"),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    minimumSize: Size(double.infinity, 48),
                  ),
                  onPressed: () {
                    controller.router_login();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        color: HexColor("#FFFFFF")),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 16, left: 24, right: 24),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Not a member?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        color: HexColor("#71727A"))),
                SizedBox(width: 3),
                InkWell(
                    onTap: () {
                      controller.router_sign_up();
                    },
                    child: Text("Register now",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            color: HexColor("#006FFD")))),
              ]),
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 24),
              child: Divider(
                color: HexColor("#D4D6DD"), // Màu sắc của đường kẻ
                thickness: 0.5, // Độ dày của đường kẻ
              ),
            ))
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Or continue with",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: HexColor("#71727A")))
            ]),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/google.png',
                    fit: BoxFit.cover, width: 40, height: 40),
                SizedBox(width: 12),
                Image.asset('assets/images/apple.png',
                    fit: BoxFit.cover, width: 40, height: 40),
                SizedBox(width: 12),
                Image.asset('assets/images/fb.png',
                    fit: BoxFit.cover, width: 40, height: 40)
              ]),
        )
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
