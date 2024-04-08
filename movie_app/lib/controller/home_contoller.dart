import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/screen/view/notification_screen.dart';
import 'package:movie_app/screen/view/post_screen.dart';
import 'package:movie_app/screen/view/profile_screem.dart';

class HomeController extends GetxController {
  int currentIndex = 0;
  List<Widget> lstScreen = [
    PostScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  void changIndex(int index) {
    currentIndex = index;
    update();
  }
}
