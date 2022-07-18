import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';

class OnBoard3 extends StatelessWidget {
  const OnBoard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("OnBoard3 Page Rebuild Oldu");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Get.toNamed("/LoginScreen1");
          }
          if (details.delta.dx > 0) {
            Get.toNamed("/OnBoard2Back");
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 2,
              width: double.infinity,
              child: Image.asset("assets/onboardScreen/onboard3/image.png", scale: 4),
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Column(
                  children: [
                    Center(
                      child: Image.asset("assets/onboardScreen/onboard3/subtract.png", scale: 4),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      textBodyWhiteBold_22_24("Keşfetmek Hiç Bu Kadar"),
                      textBodyWhiteBold_22_24("Eğlenceli Olmamıştı"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("Sağlıkla ilgili merak ettiğiniz tüm konular"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("keyifli ve anlaşılır bir dille bir tık uzağında"),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed("/LoginScreen1");
                      }, // Image tapped
                      child: Image.asset("assets/onboardScreen/onboard3/button.png", scale: 4),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textBodyBlackNormal_14_16("Bir Hesabınız var mı?"),
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
