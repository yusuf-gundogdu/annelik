import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';
import 'package:flutter/material.dart';
import '../../widget/sms_pinput_box/sms_pinput_box.dart';

class LoginRequestSms3 extends StatelessWidget {
  const LoginRequestSms3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final getXController = Get.put(StateData());

    // ignore: avoid_print
    print("LoginRequestSms3 Page Rebuild Oldu");
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/requestsms/text.png", scale: 4),
                  const SizedBox(height: 20),
                  const Text("Verilen numaraya sadece altı sihirli rakam"),
                  const Text("gönderdik lütfen bunları aşağıya girin."),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Center(
                      child: txtSendSms(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (getXController.getSmsValue.length == 6) {
                          Get.toNamed("/LoginRequestContract4");
                        } else {
                          Get.snackbar("Giriş yapabilmek için", "SMS kodunu giriniz.");
                        }
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
                            child: textBodyWhiteBold_18_20("Kayıt Ol"),
                          ),
                        ),
                      ),
                    ),
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
