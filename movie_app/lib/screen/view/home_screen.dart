import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/home_contoller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return IndexedStack(
            index: controller.currentIndex,
            children: controller.lstScreen,
          );
        },
      ),
      bottomNavigationBar: GetBuilder<HomeController>(builder: (controller) {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: (index) {
            controller.changIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        );
      }),
    );
  }
}
