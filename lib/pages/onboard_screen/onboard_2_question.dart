import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("OnBoard2 Page Rebuild Oldu");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Get.toNamed("/OnBoard3Next");
          }
          if (details.delta.dx > 0) {
            Get.toNamed("/OnBoard1Back");
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 2,
              width: double.infinity,
              child: Image.asset("assets/onboardScreen/onboard2/image.png", scale: 4),
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Column(
                  children: [
                    Center(
                      child: Image.asset("assets/onboardScreen/onboard2/subtract.png", scale: 4),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      textBodyWhiteBold_22_24("Bütün Soruların"),
                      textBodyWhiteBold_22_24("Yanıtları Burada!"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("Aklına takılan tüm soruları istersen"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("uzmana istersen diğer annelere"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("sorabilrsin"),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () async {
                        Get.toNamed("/OnBoard3Next");
                      }, // Image tapped
                      child: Image.asset("assets/onboardScreen/onboard2/button.png", scale: 4),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textBodyBlackNormal_14_16(
                    "Bir Hesabınız var mı?",
                  ),
                  GestureDetector(
                    onTap: () {}, // Image tapped
                    child: textBodyBlackBold_14_16(" Giriş yap"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
