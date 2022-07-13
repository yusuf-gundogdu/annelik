import 'package:annelik/pages/login_screen/login_screen_1_register.dart';
import 'package:annelik/pages/login_screen/login_screen_2_phone.dart';
import 'package:annelik/pages/login_screen/login_screen_3_sms.dart';
import 'package:annelik/pages/login_screen/login_screen_4_contract.dart';
import 'package:annelik/pages/main_screen/screen_control.dart';
import 'package:annelik/pages/onboard_screen/onboard_1_welcome.dart';
import 'package:annelik/pages/onboard_screen/onboard_2_question.dart';
import 'package:annelik/pages/onboard_screen/onboard_3_exploration.dart';
import 'package:annelik/utils/page_route.dart';
import 'package:annelik/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    GetMaterialApp(
      locale: const Locale("tr"),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      darkTheme: darkTheme(),
      theme: lightTheme(),
      initialRoute: '/',
      defaultTransition: Transition.native,
      transitionDuration: const Duration(milliseconds: 600),
      getPages: getPages(),
    ),
  );
}
