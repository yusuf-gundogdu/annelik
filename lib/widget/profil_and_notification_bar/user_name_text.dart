import 'package:flutter/material.dart';

import '../../utils/color.dart';

class User_Name_Text extends StatelessWidget {
  const User_Name_Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 18,
          width: MediaQuery.of(context).size.width / 3,
          child: Card(
            elevation: 0,
            color: black12,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: transparent, width: 1),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 18,
          width: MediaQuery.of(context).size.width / 3,
          child: Card(
            elevation: 0,
            color: black12,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: transparent, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}