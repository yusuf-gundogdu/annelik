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
      locale: Get.deviceLocale,
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
