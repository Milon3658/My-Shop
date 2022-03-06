import 'package:ebuy/Controller/LoginController.dart';
import 'package:ebuy/Controller/cartcontroller.dart';
import 'package:ebuy/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => CartController());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const MainPage(),
    );
  }
}

