import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';

class LoginRequestCompleteProfile10 extends StatelessWidget {
  late DateTime selectedDate;
  final CountDownTimerState TimerState = Get.put(CountDownTimerState());
  final _textEditingController = TextEditingController();

  void initState() {
    _textEditingController.addListener(() => TimerState.setnumber(_textEditingController.text));

  }

  @override
  Widget build(BuildContext context) {
    TimerState.StateTimerStart();

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
            const SizedBox(height: 70),
            Center(
              child: textBodyPurpleBold_22_24("Kişisel Programın"),
            ),
            Center(
              child: textBodyPurpleBold_22_24("oluşturuluyor"),
            ),
            // const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).copyWith().size.height / 2,
                child: CircularPercentIndicator(
                  center: GetBuilder<CountDownTimerState>(
                      builder: (_) => Text('${TimerState.SCount}')),
                  animationDuration: 2000,
                  radius: 100.0,
                  lineWidth: 10.0,
                  animation: true,
                  onAnimationEnd: () {
                    Get.toNamed("/LoginRequestBirthDay9");
                  },
                  percent: 1.00,
                  animateFromLastPercent: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
