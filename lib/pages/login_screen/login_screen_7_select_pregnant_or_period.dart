import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/color.dart';
import '../../utils/text_style.dart';

class LoginRequestSelectPregnantOrPeriod7 extends StatelessWidget {
  const LoginRequestSelectPregnantOrPeriod7({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginRequestSelectPregnantOrPeriod7 Page Rebuild Oldu");
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: () async {
                      Get.back();
                    }, // Image tapped
                    child: Image.asset("assets/icon/topbackbutton.png", scale: 4),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(children: [
                    textBodyPurpleBold_10_12("2/4 Adım"),
                    const SizedBox(height: 5),
                    LinearPercentIndicator(
                      width: 150.0,
                      alignment: MainAxisAlignment.center,
                      lineHeight: 3.0,
                      percent: 0.50,
                      barRadius: const Radius.circular(16),
                      backgroundColor: purple10,
                      progressColor: purple,
                    ),
                    const SizedBox(height: 20),
                  ]),
                ),
                const Expanded(flex: 3, child: Text("")),
              ],
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 20),
                  Text("Hamileliğinin Kaçıncı Haftasındasın."),
                  Text("Lütfen Bir Yöntem Seç."),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        Get.toNamed("/LoginRequestPregnant8");
                      },
                      child: Container(
                        height: 60.0,
                        color: transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            color: purple,
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          child: Center(
                            child: textBodyWhiteBold_18_20("Haftamı Biliyorum"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {;
                        FocusManager.instance.primaryFocus?.unfocus();
                        Get.toNamed("/LoginRequestPeriod8");
                      },
                      child: Container(
                        height: 60.0,
                        color: transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            color: purple,
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          child: Center(
                            child: textBodyWhiteBold_18_20("Son Adet Tarihimi Biliyorum"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
