import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';


class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginScreen1 Page Rebuild Oldu");
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/loginscreen/text.png", scale: 4),
              const SizedBox(height: 10),
              SizedBox(
                height: size.height / 3,
                width: double.infinity,
                child: Image.asset("assets/loginscreen/image.png", scale: 2),
              ),
              const SizedBox(height: 10),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 0.0,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed("/LoginRequestPhone2");
                    },
                    child: Image.asset("assets/loginscreen/login.png", scale: 4),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
        ),
      ),
    );
  }
}
