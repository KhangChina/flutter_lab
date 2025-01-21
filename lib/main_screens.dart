import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/home_screens.dart';
import 'package:flutter_application_1/login/login_controler.dart';
import 'package:flutter_application_1/main_controler.dart';
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
          ],
        );
      }), bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.index_tab.value,
          onTap: (index) {
            controller.setStateTab(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: _buildCustomIcon(
                isActive: controller.index_tab.value == 0,
                activeWidget: Column(
                  children: [
                    Image.asset('assets/images/com_active.png', height: 20),
                    Text('Home', style: TextStyle(color: Colors.blue)),
                  ],
                ),
                inactiveWidget: Column(
                  children: [
                    Image.asset('assets/images/inactive.png', height: 20),
                    Text('Home', style: TextStyle(color: Colors.grey)),
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
                    Image.asset('assets/images/com_active.png', height: 20),
                    Text('Favorites', style: TextStyle(color: Colors.blue)),
                  ],
                ),
                inactiveWidget: Column(
                  children: [
                    Image.asset('assets/images/inactive.png', height: 20),
                    Text('Favorites', style: TextStyle(color: Colors.grey)),
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
                    Image.asset('assets/images/com_active.png', height: 20),
                    Text('Settings', style: TextStyle(color: Colors.blue)),
                  ],
                ),
                inactiveWidget: Column(
                  children: [
                    Image.asset('assets/images/inactive.png', height: 20),
                    Text('Settings', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              label: '',
            ),
          ],
        );
      })),
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
