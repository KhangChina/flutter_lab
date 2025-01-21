import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_screens.dart';
import 'package:flutter_application_1/login/login_controler.dart';
import 'package:flutter_application_1/main_controler.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:get/get.dart';

class MainScreens extends StatelessWidget {
  // const MainScreens({super.key});
  // int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(MainController());
    return DefaultTabController(
      length: 3, // Số lượng tab
      child: Scaffold(body: Obx(() {
        return IndexedStack(
          index: controller.index_tab.value,
          children: [
            HomeScreens(),
            Center(child: Text('Favorites Screen')),
            Center(child: Text('Settings Screen')),
            Center(child: Text('Settings Screen'))
          ],
        );
      }), bottomNavigationBar: SafeArea(
        child: Obx(() {
          return SizedBox(
            height: 95,
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: controller.index_tab.value,
              onTap: (index) {
                controller.setStateTab(index);
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: _buildCustomIcon(
                    isActive: controller.index_tab.value == 0,
                    
                    activeWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset('assets/images/com_active.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Explore',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                    inactiveWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset('assets/images/inactive.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Explore',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: HexColor("#71727A"),
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _buildCustomIcon(
                    isActive: controller.index_tab.value == 1,
                    activeWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset(
                              'assets/images/categories_active.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Categories',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                    inactiveWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset(
                              'assets/images/categories_inactive.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Categories',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _buildCustomIcon(
                    isActive: controller.index_tab.value == 2,
                    activeWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset(
                              'assets/images/store_active.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Categories',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                    inactiveWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset(
                              'assets/images/store_inactive.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Categories',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _buildCustomIcon(
                    isActive: controller.index_tab.value == 3,
                    activeWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset(
                              'assets/images/user_active.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Profile',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                    inactiveWidget: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Image.asset(
                              'assets/images/user_inactive.png',
                              height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text('Profile',
                              style: TextStyle(
                                  color: HexColor("#1F2024"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10)),
                        )
                      ],
                    ),
                  ),
                  label: '',
                ),
              ],
            ),
          );
        }),
      )),
    );
  }
}

Widget _buildCustomIcon({
  required bool isActive,
  required Widget activeWidget,
  required Widget inactiveWidget,
}) {
  return isActive ? activeWidget : inactiveWidget;
}
