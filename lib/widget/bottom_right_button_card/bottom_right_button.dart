import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'drawing.dart';

class BottomRightBottomCard extends StatelessWidget {
  final String imagePath;
  final Color buttonBackGroundColor;
  final int objectSize;

  const BottomRightBottomCard({super.key, required this.imagePath, required this.buttonBackGroundColor, required this.objectSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: CustomPaint(
                size: Size(objectSize.toDouble(), (objectSize * 0.42857142857142855).toDouble()),
                painter: RPSCustomPainter(buttonBackGroundColor),
              ),
            ),
          ),
          // CustomPaint(
          //   size: Size(objectSize.toDouble(), (objectSize * 0.42857142857142855).toDouble()),
          //   painter: RPSCustomPainter(buttonBackGroundColor),
          // ),
          // SizedBox(
          //   height: objectSize * 0.13,
          //   width: objectSize * 0.13,
          //   child: FittedBox(
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(elevation: 0, shape: const CircleBorder(), backgroundColor: black12),
          //       child: Container(
          //         width: 200,
          //         height: 200,
          //         alignment: Alignment.center,
          //         decoration: const BoxDecoration(shape: BoxShape.circle),
          //         child: Image.asset(imagePath, color: white),
          //       ),
          //       onPressed: () {},
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
