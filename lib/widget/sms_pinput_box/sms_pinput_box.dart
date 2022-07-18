import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';

Widget txtSendSms() {
  final getXController = Get.put(StateData());
  getXController.getSmsValue.value.text == "";

  return SizedBox(
    height: 56,
    child: Pinput(
      length: 6,
      controller: getXController.getSmsValue,
      focusNode: FocusNode(),
      defaultPinTheme: PinTheme(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: grey),
        ),
      ),
      showCursor: true,
      obscureText: false,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: (pin) => getXController.getSmsValue.text = pin,
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color: grey,
          ),
        ],
      ),
      focusedPinTheme: PinTheme(
        textStyle: textStyle(),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: purple),
        ),
      ).copyWith(
        height: 50,
        width: 50,
        decoration: PinTheme(
          textStyle: textStyle(),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: purple),
          ),
        ).decoration!.copyWith(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: purple),
            ),
      ),
      submittedPinTheme: PinTheme(
        textStyle: textStyle(),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: purple),
        ),
      ).copyWith(
        height: 50,
        width: 50,
        decoration: PinTheme(
          textStyle: textStyle(),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: purple),
          ),
        ).decoration!.copyWith(
              color: const Color.fromRGBO(0, 246, 0, 0),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: purple),
            ),
      ),
    ),
  );
}

TextStyle textStyle() => TextStyle(fontSize: 18, color: purple, fontWeight: FontWeight.w600, fontFamily: 'Poppins');
