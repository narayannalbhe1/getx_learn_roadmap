import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_roadmap/Screens/Fruit_List.dart';
import 'package:getx_learn_roadmap/Screens/Home%20Screen/HomeScreen.dart';
import 'package:getx_learn_roadmap/Screens/ImagePickerExample.dart';
import 'package:getx_learn_roadmap/Screens/Slider_Example.dart';
import 'package:getx_learn_roadmap/Screens/Switch_Example.dart';
import 'package:getx_learn_roadmap/Screens/loginExGet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
