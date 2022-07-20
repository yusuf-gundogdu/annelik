import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/state_data.dart';
import '../../utils/color.dart';

class BuildFloatingBarState extends StatelessWidget {
  BuildFloatingBarState({Key? key}) : super(key: key);
  final MyTabController _tabx = Get.put(MyTabController());

  // controller: _tabx.controller,
  // tabs: _tabx.myTabs,

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("BuildFloatingBarState Widget Rebuild Oldu");
    final getXController = Get.put(StateData());
    return Obx(
      () => SizedBox(
        height: MediaQuery.of(context).size.height / 7,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: CustomNavigationBar(
            scaleFactor: 0.5,
            iconSize: 30.0,
            blurEffect: false,
            scaleCurve: Curves.fastLinearToSlowEaseIn,

            bubbleCurve: Curves.linear,
            elevation: 0,
            strokeColor: white10,
            backgroundColor: purple,
            borderRadius: const Radius.circular(30.0),
            items: [
              CustomNavigationBarItem(
                title: Text("Ana Sayfa",
                    style: TextStyle(
                      fontSize: 12,
                      color: purple10,
                    )),
                selectedTitle:  Text("Ana Sayfa", style: TextStyle(fontSize: 12, color: white)),
                icon: Image.asset(
                  "assets/bottomnavigationbar/home.png",
                  color: purple10,
                ),
                selectedIcon: Image.asset("assets/bottomnavigationbar/home.png", color: white),
              ),
              CustomNavigationBarItem(
                title:  Text("Blog",
                    style: TextStyle(
                      fontSize: 12,
                      color: purple10,
                    )),
                selectedTitle:  Text("Blog", style: TextStyle(fontSize: 12, color: white)),
                icon: Image.asset(
                  "assets/bottomnavigationbar/blog.png",
                  color: purple10,
                ),
                selectedIcon: Image.asset("assets/bottomnavigationbar/blog.png", color: white),
              ),
              CustomNavigationBarItem(
                title: Text("Forum",
                    style: TextStyle(
                      fontSize: 12,
                      color: purple10,
                    )),
                selectedTitle: Text("Forum", style: TextStyle(fontSize: 12, color: white)),
                icon: Image.asset(
                  "assets/bottomnavigationbar/forum.png",
                  color: purple10,
                ),
                selectedIcon: Image.asset("assets/bottomnavigationbar/forum.png", color: white),
              ),
              CustomNavigationBarItem(
                title: Text("Daha Fazla",
                    style: TextStyle(
                      fontSize: 12,
                      color: purple10,
                    )),
                selectedTitle: Text("Daha Fazla", style: TextStyle(fontSize: 12, color: white)),
                icon: Image.asset(
                  "assets/bottomnavigationbar/more.png",
                  color: purple10,
                ),
                selectedIcon: Image.asset("assets/bottomnavigationbar/more.png", color: white),
              ),
            ],
            // controller: _tabx.controller,
            // tabs: _tabx.myTabs,
            currentIndex: getXController.buildFloatingBar.value,
            onTap: (index) {
              _tabx.controller.index = index;
              getXController.buildFloatingBar(index);
              // buildFloatingBar_(index);
            },
            isFloating: true,
          ),
        ),
      ),
    );
  }
}
