import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class otp_screens extends StatelessWidget {
  const otp_screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
      Padding(
          padding: EdgeInsets.only(top: 88),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter confirmation code",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      color: HexColor("#1F2024")),
                  textAlign: TextAlign.center),
            ],
          )),
      Padding(
          padding: EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("A 4-digit code was sent to",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: HexColor("#71727A")),
                  textAlign: TextAlign.center),
            ],
          )),
      Padding(
          padding: EdgeInsets.only(top: 0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lucasscott3@email.com",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: HexColor("#71727A")),
                  textAlign: TextAlign.center),
            ],
          )),
      Padding(
        padding: EdgeInsets.only(top: 40),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          OTPInput(),
          SizedBox(width: 8),
          OTPInput(),
          SizedBox(width: 8),
          OTPInput(),
          SizedBox(width: 8),
          OTPInput(),
        ]),
      ),
      Padding(
        padding: EdgeInsets.only(top: 112),
        child: Center(
          child: InkWell(
            onTap: () {},
            child: Text(
              "Resend code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                color: HexColor("#006FFD"),
              ),
            ),
          ),
        ),
      ),
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 28, left: 24, right: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor("#006FFD"),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  minimumSize: Size(double.infinity, 48),
                ),
                onPressed: () {
                  //controller.next_page();
                  Get.snackbar(
                    "Thông báo", // Tiêu đề
                    "Đây là một thông báo từ GetX", // Nội dung
                    snackPosition: SnackPosition.TOP, // Vị trí của SnackBar
                    backgroundColor: Colors.blue, // Màu nền của SnackBar
                    colorText: Colors.white, // Màu văn bản
                    duration: const Duration(seconds: 2),
                  );
                },
                child: Text(
                  'Continue',
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
    ]))));
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48, // Chiều rộng của mỗi ô nhập
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Inter',
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: HexColor("#C5C6CC"), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: HexColor("#006FFD"), width: 2),
          ),
          counterText: "",
        ),
        maxLength: 1, // Giới hạn nhập 1 ký tự
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
