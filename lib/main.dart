import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbox/styles/theme.dart';
import 'controller/hoverController.dart';
import 'screens/dashboard.dart';

void main() {
  Get.put(HoverController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mapbox',
      debugShowCheckedModeBanner: false,
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
      theme: ThemeColors().lightTheme,
      home: const Dashboard(),
    );
  }
}

