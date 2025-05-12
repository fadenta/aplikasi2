import 'package:aplikasi2/dashboard.dart';
import 'package:aplikasi2/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 119, 204, 238),
        ),
        useMaterial3: true,
      ),
      home: Dashboard(),
    );
  }
}
