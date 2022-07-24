import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';

class UserFind extends StatelessWidget {
  const UserFind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 7,
      width: MediaQuery.of(context).size.width / 7,
      child: GestureDetector(
        onTap: () {
          Get.snackbar("Arama servisleri şuan çalışmamaktadır.", "Diğer menuleri kontrol edebilirsiniz...");
        },
        child: Card(
          elevation: 0,
          color: transparent,
          // shape: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: BorderSide(color: black12, width: 1),
          // ),
          child: Image.asset(
            "assets/profilebar/find.png",
            scale: 3,
            color: black12,
          ),
        ),
      ),
    );
  }
}
