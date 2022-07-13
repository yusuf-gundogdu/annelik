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
