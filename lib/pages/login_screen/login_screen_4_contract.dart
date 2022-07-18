import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';

class LoginRequestContract4 extends StatelessWidget {
  const LoginRequestContract4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginRequestContract4 Page Rebuild Oldu");
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
              flex: 6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/loginscreen/contractimage.png", scale: 4),
                    const SizedBox(height: 20),
                    textBodyPurpleBold_18_20("Önce Gizlilik"),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: transparent,
                          child: Obx(
                            () => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  value: getXController.contract1.value,
                                  checkColor: white,
                                  activeColor: purple,
                                  hoverColor: purple,
                                  focusColor: purple,
                                  onChanged: (bool? val) {
                                    getXController.contract1(val);
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    const SizedBox(height: 10),
                                    textBodyBlackNormal_14_16("Gizlilik Politikasını ve Kullanım"),
                                    textBodyBlackNormal_14_16("Şartlarını kabul ediyorum."),

                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: transparent,
                          child: Obx(
                            () => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: getXController.contract2.value,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  checkColor: white,
                                  activeColor: purple,
                                  hoverColor: purple,
                                  focusColor: purple,
                                  onChanged: (bool? val) {
                                    getXController.contract2(val);
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    const SizedBox(height: 10),
                                    textBodyBlackNormal_14_16("Annelik Hikayesi uygulaması "),
                                    textBodyBlackNormal_14_16("işlevlerinin sağlanması amacıyla "),
                                    textBodyBlackNormal_14_16("kişisel sağlık bilgilerimin işlenmesini "),
                                    textBodyBlackNormal_14_16("kabul ediyorum. Daha fazlası için "),
                                    textBodyBlackNormal_14_16("Gizlilik Politikamıza göz atın"),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        if (getXController.contract2.value == true && getXController.contract1.value == true) {
                          FocusManager.instance.primaryFocus?.unfocus();
                          Get.toNamed("/LoginRequestName5");
                        } else {
                          Get.snackbar("Giriş yapabilmek için", "Sözleşme metnini kabul ediniz.");
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
