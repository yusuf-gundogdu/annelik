import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import '../utils/color.dart';

class StateData extends GetxController {
  var token = "fake_Token".obs;
  final contract1 = false.obs;
  final contract2 = false.obs;
  final avatarSelect = 0.obs;


  final phoneNumberController = false.obs;
  final buildFloatingBar = 0.obs;
  final getSmsValue = TextEditingController();
  final phoneNumber = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();

  void initialization() async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: transparent, statusBarBrightness: Brightness.light));
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

//2. BuildFloatingBarState seçim SetState Event
  void buildFloatingBarState(int data) {
    print("data..: $data");
    buildFloatingBar(data);
  }
}


class MyTabController extends GetxController with GetSingleTickerProviderStateMixin {
  final tabIndex = 0.obs;
  final getXController = Get.put(StateData());

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 4)
      ..addListener(() {
        getXController.buildFloatingBar(controller.index);
      });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}



class CountDownTimerState extends GetxController{
  // Initial Count Timer value

  var SCount = 1000;

  //object for Timer Class
  late Timer _timer;
  // a Method to start the Count Down
  void StateTimerStart(){
    //Timer Loop will execute every 1 second, until it reach 0
    // once counter value become 0, we store the timer using _timer.cancel()

    _timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
      if(SCount > 0){
        SCount--;
        update();
      }else{
        _timer.cancel();
      }
    });
  }
  // user can set count down seconds, from TextField
  void setnumber(var num){
    SCount = int.parse(num);
    update();
  }
  // pause the timer
  void Pause(){
    _timer.cancel();
    update();
  }
  // reset count value to 10
  void reset(){
    _timer.cancel();
    SCount = 10 ;
    update();
  }
}