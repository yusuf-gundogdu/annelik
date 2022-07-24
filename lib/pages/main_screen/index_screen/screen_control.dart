import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/state_data.dart';
import '../../../utils/color.dart';
import '../../../widget/bottom_navigation_bar/bottom_navigator_bar.dart';
import 'blog_screen.dart';
import 'forum_screen.dart';
import 'main_screen.dart';
import 'more_screen.dart';

class ScreenControllerPage extends StatelessWidget {
  final MyTabController _tabx = Get.put(MyTabController());

  ScreenControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("ScreenControllerPage Page Rebuild Oldu");
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        bottomNavigationBar: BuildFloatingBarState(),
        backgroundColor: white,
        extendBody: true,
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          controller: _tabx.controller,
          children: [
            MainScreen(),
            BlogScreen(),
            ForumSceen(),
            MoreScreen(),
          ],
        ),
      ),
    );
  }
}
