
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/state_data.dart';
import '../../../utils/color.dart';
import '../../../widget/bottom_right_button_card/bottom_right_button.dart';
import '../../../widget/profil_and_notification_bar/profil_and_notification_bar.dart';
import '../../../widget/story_box/story_box.dart';



class MainScreen extends StatelessWidget {

  List<String> countries = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"];

  MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: transparent,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.width / 12),
                  const ProfilAndNotificationBar(),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    color: transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 4,
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: countries.map((index) {
                              return const StoryBox();
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Column(
                    children: [
                      BottomRightBottomCard(buttonBackGroundColor: black12, objectSize: MediaQuery.of(context).size.width.toInt() - 30, imagePath: "assets/icon/detailicon.png"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Column(
                    children: [
                      BottomRightBottomCard(buttonBackGroundColor: black12, objectSize: MediaQuery.of(context).size.width.toInt() - 30, imagePath: "assets/icon/detailicon.png"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Column(
                    children: [
                      BottomRightBottomCard(buttonBackGroundColor: black12, objectSize: MediaQuery.of(context).size.width.toInt() - 30, imagePath: "assets/icon/detailicon.png"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Column(
                    children: [
                      BottomRightBottomCard(buttonBackGroundColor: black12, objectSize: MediaQuery.of(context).size.width.toInt() - 30, imagePath: "assets/icon/detailicon.png"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Column(
                    children: [
                      BottomRightBottomCard(buttonBackGroundColor: black12, objectSize: MediaQuery.of(context).size.width.toInt() - 30, imagePath: "assets/icon/detailicon.png"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                  Column(
                    children: [
                      BottomRightBottomCard(buttonBackGroundColor: black12, objectSize: MediaQuery.of(context).size.width.toInt() - 30, imagePath: "assets/icon/detailicon.png"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
