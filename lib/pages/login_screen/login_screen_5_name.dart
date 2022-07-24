import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';
import '../../widget/name_text/first_name.dart';

class LoginRequestName5 extends StatelessWidget {
  const LoginRequestName5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstName = Get.put(StateData());
    var lastName = Get.put(StateData());
    // ignore: avoid_print
    print("LoginRequestName5 Page Rebuild Oldu");
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
            Name(name: firstName.firstName, hintText: "İsim"),
            const SizedBox(height: 20),
            Name(name: lastName.lastName, hintText: "Soyisim"),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        if (firstName.firstName.value.text != "" &&
                            lastName.lastName.value.text != "") {
                          FocusManager.instance.primaryFocus?.unfocus();
                          Get.toNamed("/LoginRequestAvatar6");
                        } else {
                          Get.snackbar("Lütfen",
                              " İsim ve Soyisim  bilgilerinizi Giriniz");
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
                            child: textBodyWhiteBold_16_18("İleri"),
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
