import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/color.dart';
import '../../utils/text_style.dart';

class LoginRequestPeriod8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginRequestPeriod8 Page Rebuild Oldu");
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
                    textBodyPurpleBold_10_12("3/4 Adım"),
                    const SizedBox(height: 5),
                    LinearPercentIndicator(
                      width: 150.0,
                      alignment: MainAxisAlignment.center,
                      lineHeight: 3.0,
                      percent: 0.75,
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
            textBodyPurpleBold_18_20("Kaç Haftalık Hamilesin"),
            // const SizedBox(height: 20),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).copyWith().size.height / 2,
                    child: CupertinoTheme(
                      data: CupertinoThemeData(
                        textTheme: CupertinoTextThemeData(
                          dateTimePickerTextStyle:
                          TextStyle(color: purple,fontSize: 20),
                        ),
                      ),
                      child: CupertinoDatePicker(
                        use24hFormat: true,
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (value) {
                          // if (value != null && value != selectedDate)
                          //   setState(() {
                          //     selectedDate = value;
                          //
                          //   });
                        },
                        initialDateTime: DateTime.now(),
                        minimumYear: 2019,
                        maximumYear: 2050,
                      ),
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
                        Get.toNamed("/LoginRequestBirthDay9");
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
                            child: textBodyWhiteBold_18_20("İleri"),
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
