import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';
import '../../widget/phone_number_box/phone_number_box.dart';

class LoginRequestPhone2 extends StatelessWidget {
  const LoginRequestPhone2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginRequestPhone2 Page Rebuild Oldu");
    PhoneNumber number = PhoneNumber(isoCode: 'TR');
    final getXController = Get.put(StateData());

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
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 60.0,

                      child: TxtPhoneNumber(number: number),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (getXController.phoneNumberController.value == true) {
                          Get.toNamed("/LoginRequestSms3");
                        } else {
                          Get.snackbar("Giriş yapabilmek için", "Geçerli bir telefon numaraı giriniz.");
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
                            child: textBodyWhiteBold_16_18("SMS Kodu Alın"),
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
