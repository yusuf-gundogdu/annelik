import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/color.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 6,
          width: MediaQuery.of(context).size.width / 6,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Card(
                elevation: 0,
                shadowColor: black,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: black12, width: 1),
                ),
                child: Card(
                  elevation: 0,
                  color: black12,
                  shadowColor: black,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: black12, width: 1),
                  ),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Card(
                  margin: const EdgeInsets.all(0),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: transparent, width: 1),
                  ),
                  color: white,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
                    child: Icon(
                      Icons.photo_camera_outlined,
                      size: 17,
                      color: black12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 33,
          width: MediaQuery.of(context).size.width / 7,
          child: Center(
            child: Text(
              "Bla! Bla!",
              style: TextStyle(color: black12, fontSize: 9, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
