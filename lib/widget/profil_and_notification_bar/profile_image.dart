import 'package:flutter/material.dart';

import '../../utils/color.dart';

class Profile_Image extends StatelessWidget {
  const Profile_Image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 6,
      width: MediaQuery.of(context).size.width / 6,
      child: Card(
        elevation: 0,
        color: black12,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: transparent, width: 1),
        ),
      ),
    );
  }
}