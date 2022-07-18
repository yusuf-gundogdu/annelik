import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';


class OnBoard1 extends StatelessWidget {
  OnBoard1({Key? key}) : super(key: key);
  final getXController = Get.put(StateData());

  @override
  Widget build(BuildContext context) {
    getXController.initialization();

    // ignore: avoid_print
    print("OnBoard1 Page Rebuild Oldu");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Get.toNamed("/OnBoard2Next",);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 2,
              width: double.infinity,
              child: Image.asset("assets/onboardScreen/onboard1/image.png", scale: 4),
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Column(
                  children: [
                    Center(
                      child: Image.asset("assets/onboardScreen/onboard1/subtract.png", scale: 4),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      textBodyWhiteBold_22_24("Ailemize"),
                      textBodyWhiteBold_22_24("Hoş Geldin"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("Kendi hikayeni yazmaya hazırsan"),
                      const SizedBox(height: 5),
                      textBodyWhiteNormal_14_16("Hadi Başlayalım!"),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Center(
                    child: Card(
                      color: transparent,
                      margin: const EdgeInsets.all(0.0),
                      elevation: 0,
                      child: GestureDetector(
                        onTap: () async {
                          Get.toNamed("/OnBoard2Next");
                        }, // Image tapped
                        child: Image.asset(
                          "assets/onboardScreen/onboard1/button.png",
                          scale: 4,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textBodyBlackNormal_14_16("Bir Hesabınız var mı?"),
                  GestureDetector(
                    onTap: () {
                      //print("Giriş Yap");
                    }, // Image tapped
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
