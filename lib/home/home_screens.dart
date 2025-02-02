import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_controler.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 72,
          leading: Padding(
            padding: EdgeInsets.only(left: 24, top: 24, bottom: 28),
            child: InkWell(
              onTap: () {
                print("Notification image clicked");
              },
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/images/search.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 24, top: 24, bottom: 28),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          print("Notification image clicked");
                        },
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/heart.png", // Đường dẫn tới hình ảnh
                          fit: BoxFit.contain,
                        )),
                    SizedBox(width: 16),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () {
                            print("Notification image clicked");
                          },
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            "assets/images/bag_outlined.png", // Đường dẫn tới hình ảnh
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: -3,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: HexColor("#006FFD"), // Màu nền của badge
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "9",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ]),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
        Stack(
          children: [
            SizedBox(
                height: 214, // Đặt chiều cao cố định cho PageView
                child: PageView(
                    controller: controller.pageController,
                    onPageChanged: controller.update_current_page_changed,
                    children: [
                      Image.asset("assets/images/onboarding_images.png",
                          fit: BoxFit.cover),
                      Image.asset("assets/images/onboarding_images.png",
                          fit: BoxFit.cover),
                      Image.asset("assets/images/onboarding_images.png",
                          fit: BoxFit.cover),
                      Image.asset("assets/images/onboarding_images.png",
                          fit: BoxFit.cover),
                      Image.asset("assets/images/onboarding_images.png",
                          fit: BoxFit.cover)
                    ])),
            Padding(
              padding:
                  const EdgeInsets.only(top: 214 - 15), // Cách phần dưới 10px
              child: NavigateItemHome(),
            ),
          ],
        ),
        productGroupPerfect(),
        productGroupSummer(),
        productGroupSummer(),
      ]))),
    );
  }
}

class NavigateItemHome extends StatelessWidget {
  const NavigateItemHome({super.key});

  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmoothPageIndicator(
          axisDirection: Axis.horizontal,
          controller: controller.pageController,
          count: 5,
          effect: WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              type: WormType.thinUnderground,
              activeDotColor: HexColor("#006FFD"),
              dotColor: HexColor("#C5C6CC")),
          onDotClicked: (index) {},
        ),
      ],
    );
  }
}

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key, this.item});
  final dynamic item;
  @override
  Widget build(Object context) {
    return Padding(
        padding: EdgeInsets.only(right: 8),
        child: SizedBox(
          width: 200,
          // height: 189,
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 120,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    child: Image.asset("assets/images/onboarding_images.png",
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 200,
                height: 69,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: HexColor("#F7F8FD"),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ) // Màu nền cho Row
                      ),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 16),
                          child: Text(
                            item["name"],
                            style: TextStyle(
                                color: HexColor("#1F2024"), fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(item["price"],
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  ]), // Tên,
                ),
              )
            ],
          ),
        ));
  }
}

class productGroupPerfect extends StatelessWidget {
  @override
  Widget build(Object context) {
    final controller = HomeController.instance;
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Perfect for you",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                    color: HexColor("#000000")),
              ),
              InkWell(
                onTap: () {
                  controller.nav_to_products_detail();
                },
                borderRadius: BorderRadius.circular(8.0),
                child: Text("See more",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        color: HexColor("#006FFD"))),
              ),
            ],
          )),
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: SizedBox(
            height: 189,
            child: Obx(() {
              return ListView.builder(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemCount: controller
                    .itemsProducts.length, // Số lượng phần tử trong danh sách
                itemBuilder: (context, index) {
                  final item = controller.itemsProducts[index];
                  return ItemProduct(item: item);
                },
              );
            })),
      ),
    ]);
  }
}

class productGroupSummer extends StatelessWidget {
  List<dynamic> items = [
    {
      "image": "assets/images/onboarding_images.png", // Đường dẫn tới hình ảnh
      "name": "Item 1",
      "price": "100.0",
      "description": "Description for Item 1",
      "category": "Category 1",
      // Thêm các trường khác nếu cần
    },
    {
      "image": "assets/images/onboarding_images.png",
      "name": "Item 2",
      "price": "200.0",
      "description": "Description for Item 2",
      "category": "Category 2",
      // Thêm các trường khác nếu cần
    },
    {
      "image": "assets/images/onboarding_images.png",
      "name": "Item 3",
      "price": "300.0",
      "description": "Description for Item 3",
      "category": "Category 3",
      // Thêm các trường khác nếu cần
    }
  ];
  @override
  Widget build(Object context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "For this summer",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                    color: HexColor("#000000")),
              ),
              InkWell(
                onTap: () {
                  print("Notification image clicked");
                },
                borderRadius: BorderRadius.circular(8.0),
                child: Text("See more",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        color: HexColor("#006FFD"))),
              ),
            ],
          )),
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: SizedBox(
          height: 189,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemCount: items.length, // Số lượng phần tử trong danh sách
            itemBuilder: (context, index) {
              var item = items[index];
              return ItemProduct(item: item);
            },
          ),
        ),
      ),
    ]);
  }
}
