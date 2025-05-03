import 'package:aplikasi2/login_screen.dart';
import 'package:flutter/material.dart';
import 'hal_profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 119, 204, 238),
        ),
        useMaterial3: true,
      ),
      home: HalProfil(),
    );
  }
}
