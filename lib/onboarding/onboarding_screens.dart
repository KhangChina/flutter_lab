import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding/onboarding_controller.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic dataItem1 = {
      "id": "234",
      "image": "assets/images/onboarding_images.png",
      "title": "Create a prototype in just a few minutes 1",
      "subTitle":
          "Enjoy these pre-made components and worry only about creating the best product ever."
    };
    dynamic dataItem2 = {
      "id": "567",
      "image": "assets/images/onboarding_images.png",
      "title": "Create a prototype in just a few minutes 2",
      "subTitle":
          "Enjoy these pre-made components and worry only about creating the best product ever."
    };
    dynamic dataItem3 = {
      "id": "8910",
      "image": "assets/images/onboarding_images.png",
      "title": "Create a prototype in just a few minutes 3",
      "subTitle":
          "Enjoy these pre-made components and worry only about creating the best product ever."
    };
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Column(
      children: [
        SizedBox(
          height: screenHeight * 0.8,
          child: PageView(
            controller: controller.pageController,
            onPageChanged: controller.update_current_page_changed,
            children: [
              OnboardingItem(dataItem: dataItem1),
              OnboardingItem(dataItem: dataItem2),
              OnboardingItem(dataItem: dataItem3),
            ],
          ),
        ),
        NavigateItem(),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 32, left: 24, right: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor("#006FFD"),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  minimumSize: Size(double.infinity, 48),
                ),
                onPressed: () {
                  controller.next_page();
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      color: HexColor("#FFFFFF")),
                ),
              ),
            ))
          ],
        ),
      ],
    ));
  }
}

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, this.dataItem});
  final dynamic dataItem;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(children: [
      Row(
        children: [
          Expanded(
              child: SizedBox(
                  height: screenHeight * 0.6,
                  child: Image.asset(dataItem["image"], fit: BoxFit.cover)))
        ],
      ),
      Row(children: [
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 24, left: 32, right: 32),
                child: Text(
                  dataItem["title"],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Inter',
                      color: HexColor("#000000")),
                  softWrap: true,
                )))
      ]),
      Row(children: [
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 24, left: 32, right: 32),
                child: Text(
                  dataItem["subTitle"],
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: HexColor("#71727A")),
                  softWrap: true,
                )))
      ]),
    ]);
  }
}

class NavigateItem extends StatelessWidget {
  const NavigateItem({super.key});

  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 32, right: 32),
          child: SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                type: WormType.thinUnderground,
                activeDotColor: HexColor("#006FFD"),
                dotColor: HexColor("#C5C6CC")),
            onDotClicked: (index) {},
          ),
        ),
      ],
    );
  }
}
