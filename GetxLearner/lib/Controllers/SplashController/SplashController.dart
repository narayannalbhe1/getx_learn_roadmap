import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_roadmap/Screens/Home%20Screen/HomeScreen.dart';

class SplashController extends GetxController {


  gotoNextScreen(){
    return Timer(const Duration(seconds: 3), () {
      Get.to(HomeScreen);
    });
  }
}