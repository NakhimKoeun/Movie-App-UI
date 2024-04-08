import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:movie_app/screen/view/home_screen.dart';
// ignore: unused_import
import 'package:movie_app/screen/view/login_screen.dart';
// ignore: unused_import
import 'package:movie_app/screen/view/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomeScreen());
  }
}
