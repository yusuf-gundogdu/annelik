import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../widget/profil_and_notification_bar/profil_and_notification_bar.dart';
import '../../../widget/story_box/story_box.dart';


class ForumSceen extends StatelessWidget {
  List<String> countries = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
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
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: Center(
                child: Text("Forum Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
