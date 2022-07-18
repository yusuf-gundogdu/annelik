import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';

class LoginRequestBirthDay9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginRequestBirthDay9 Page Rebuild Oldu");
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
                    textBodyPurpleBold_10_12("4/4 Adım"),
                    const SizedBox(height: 5),
                    LinearPercentIndicator(
                      width: 150.0,
                      alignment: MainAxisAlignment.center,
                      lineHeight: 3.0,
                      percent: 1.00,
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
            const SizedBox(height: 20),
            textBodyPurpleBold_22_24("Tahminleri daha iyi hale"),
            textBodyPurpleBold_22_24("getirebilmek için doğum"),
            textBodyPurpleBold_22_24("tarihinizi giriniz."),
            // const SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).copyWith().size.height / 2,
                    child: CupertinoPicker(
                      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(background: purple10.withOpacity(0.5)),
                      onSelectedItemChanged: (int value) {
                        print("${value + 1951}");
                      },
                      itemExtent: 64,
                      children: [
                        for (int i = 1969; i < 2010; i++)
                          Center(
                              child: Text(
                            "${i + 1}",
                            style: TextStyle(color: purple, fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 22),
                          )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        Get.toNamed("/LoginRequestCompleteProfile10");
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
                            child: textBodyWhiteBold_16_18("İleri"),
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
