import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/state_data.dart';
import '../../utils/color.dart';

class Profile_Image extends StatelessWidget {
  const Profile_Image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var avatarSelect = Get.put(StateData());

    return SizedBox(
      height: MediaQuery.of(context).size.width / 6,
      width: MediaQuery.of(context).size.width / 6,
      child: Card(
        elevation: 0,
        child: Image.asset("assets/avatars/${avatarSelect.avatarSelect}.png", scale: 4),
      ),
    );
  }
}
