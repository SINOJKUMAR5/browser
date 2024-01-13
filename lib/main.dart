import 'package:browser/pages/home_page.dart';
import 'package:browser/pages/theme_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light_theme,
      home: home_page(),
    );
  }
}
