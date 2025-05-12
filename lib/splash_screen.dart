import 'package:aplikasi2/hal_profil.dart';
import 'package:aplikasi2/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      final box = GetStorage();
      String? email = box.read('email');

      if (email == null) {
        Get.off(() => LoginScreen());
      } else {
        Get.off(() => HalProfil());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('TRPL 22A2'),
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 24, 250, 3),
            ),
          ],
        ),
      ),
    );
  }
}
