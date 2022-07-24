import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecordedScreen extends StatelessWidget {
  const RecordedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                const Expanded(
                  flex: 3,
                  child: Text("Kaydedilenler"),
                ),               ],
            ),
          ],
        ),
      ),
    );
  }
}