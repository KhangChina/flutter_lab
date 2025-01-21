import 'package:flutter/material.dart';

class product_list_screens extends StatelessWidget {
  const product_list_screens({super.key});
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final controller = Get.put(LoginController());
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(
        children: [Text("Hello product_list_screens")],
      ),
    )));
  }
}
