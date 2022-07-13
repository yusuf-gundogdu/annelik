import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';

class User_Notification extends StatelessWidget {
  const User_Notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 7,
      width: MediaQuery.of(context).size.width / 7,
      child: GestureDetector(
        onTap: () {
          Get.snackbar("", "Bildirim Bulunmamaktadır.");
        },
        child: Card(
          elevation: 0,
          color: transparent,
          // shape: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: BorderSide(color: black12, width: 1),
          // ),
          child: Image.asset(
            "assets/profilebar/notification.png",
            scale: 3,
            color: black12,
          ),
        ),
      ),
    );
  }
}
