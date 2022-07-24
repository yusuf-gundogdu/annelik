import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OtherRowCard extends StatelessWidget {
  const OtherRowCard({
    Key? key,
    required this.cardBackgroundColor1,
    required this.cardUrlImage1,
    required this.cardDescriptionText1,
    required this.cardDescriptionTextColor1,
    required this.cardGetToNamedRoutePage1,
    required this.cardBackgroundColor2,
    required this.cardUrlImage2,
    required this.cardDescriptionText2,
    required this.cardDescriptionTextColor2,
    required this.cardGetToNamedRoutePage2,
  }) : super(key: key);

  final Color cardBackgroundColor1;
  final String cardUrlImage1;
  final String cardDescriptionText1;
  final Color cardDescriptionTextColor1;
  final String cardGetToNamedRoutePage1;
  final Color cardBackgroundColor2;
  final String cardUrlImage2;
  final String cardDescriptionText2;
  final Color cardDescriptionTextColor2;
  final String cardGetToNamedRoutePage2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2 - 10,
            height: MediaQuery.of(context).size.width / 2 - 30,
            child: GestureDetector(
              onTap: () async {
                Get.toNamed(cardGetToNamedRoutePage1);
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: cardBackgroundColor1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(cardUrlImage1, scale: 4),
                      SizedBox(height: 20),
                      Text(cardDescriptionText1, style: TextStyle(color: cardDescriptionTextColor1, fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2 - 10,
            height: MediaQuery.of(context).size.width / 2 - 30,
            child: GestureDetector(
              onTap: () async {
                Get.toNamed(cardGetToNamedRoutePage2);
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: cardBackgroundColor2,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(cardUrlImage2, scale: 4),
                      SizedBox(height: 20),
                      Text(cardDescriptionText2, style: TextStyle(color: cardDescriptionTextColor2, fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
