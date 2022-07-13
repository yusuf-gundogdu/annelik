import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';

class LoginRequestAvatar6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("LoginRequestAvatar6 Page Rebuild Oldu");
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
                    textBodyPurpleBold_10_12("1/4 Adım"),
                    const SizedBox(height: 5),
                    LinearPercentIndicator(
                      width: 150.0,
                      alignment: MainAxisAlignment.center,
                      lineHeight: 3.0,
                      percent: 0.25,
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
            textBodyPurpleBold_18_20("Profil Fotoğrafını Seç"),
            const SizedBox(height: 20),
            Expanded(
              flex: 6,
              child: GridView.builder(
                padding: const EdgeInsets.all(2),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  // ignore: avoid_print
                  print(index);
                  return Obx(() => buildCard(index));
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              ),
            ),
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
                        FocusManager.instance.primaryFocus?.unfocus();
                        Get.toNamed("/LoginRequestSelectPregnantOrPeriod7");
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
                            child: textBodyWhiteBold_18_20("Devam Et"),
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

  StateData checkedIndex = Get.put(StateData());

  Widget buildCard(int index) {
    var avatarSelect = Get.put(StateData());

    bool checked = index == checkedIndex.avatarSelect.value;
    // String name = cardNames[index];
    return GestureDetector(
      onTap: () {
        checkedIndex.avatarSelect.value = index;
        print(checkedIndex.avatarSelect.value);
        // avatarSelect.avatarSelect(index+ 1);
      },
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: transparent,
              child: Card(
                color: checked ? transparent : transparent,
                shape: RoundedRectangleBorder(
                  //<-- SEE HERE
                  side: BorderSide(
                    color: checked ? purple : transparent,
                  ),
                  borderRadius: BorderRadius.circular(25.0), //<-- SEE HERE
                ),
                elevation: 0,
                // color: transparent,
                child: Image.asset("assets/avatars/${index + 1}.png", scale: 4),
              ),
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Offstage(
              offstage: !checked,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, border: Border.all(width: 2), shape: BoxShape.circle),
                child: const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
