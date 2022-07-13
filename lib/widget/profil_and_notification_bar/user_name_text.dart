import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/state_data.dart';

class User_Name_Text extends StatelessWidget {
  const User_Name_Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstName = Get.put(StateData());
    var lastName = Get.put(StateData());
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 18,
          width: MediaQuery.of(context).size.width / 3,
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.only(left: 10, bottom: 0, right: 0, top: 0),
              child: Text(firstName.firstName.text),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 18,
          width: MediaQuery.of(context).size.width / 3,
          child: Card(
            elevation: 0,
            margin: EdgeInsets.zero,
            child: Padding(
              padding: EdgeInsets.only(left: 10, bottom: 0, right: 0, top: 0),
              child: Text(lastName.lastName.text),
            ),
          ),
        ),
      ],
    );
  }
}
