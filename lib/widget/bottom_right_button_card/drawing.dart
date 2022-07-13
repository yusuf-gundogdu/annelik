import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter {
  final Color kColor;

  RPSCustomPainter(this.kColor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = kColor
      ..style = PaintingStyle.fill;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8435514, size.height * 0.8268000);
    path_0.cubicTo(
        size.width * 0.8444257,
        size.height * 0.7963667,
        size.width * 0.8481800,
        size.height * 0.7667600,
        size.width * 0.8545371,
        size.height * 0.7401133);
    path_0.cubicTo(
        size.width * 0.8608943,
        size.height * 0.7134667,
        size.width * 0.8697000,
        size.height * 0.6904400,
        size.width * 0.8803200,
        size.height * 0.6726867);
    path_0.cubicTo(
        size.width * 0.8909400,
        size.height * 0.6549373,
        size.width * 0.9031143,
        size.height * 0.6429007,
        size.width * 0.9159629,
        size.height * 0.6374433);
    path_0.cubicTo(
        size.width * 0.9288114,
        size.height * 0.6319867,
        size.width * 0.9420200,
        size.height * 0.6332453,
        size.width * 0.9546371,
        size.height * 0.6411287);
    path_0.cubicTo(
        size.width * 0.9600429,
        size.height * 0.6442767,
        size.width * 0.9656857,
        size.height * 0.6444940,
        size.width * 0.9711343,
        size.height * 0.6417640);
    path_0.cubicTo(
        size.width * 0.9765829,
        size.height * 0.6390333,
        size.width * 0.9816914,
        size.height * 0.6334280,
        size.width * 0.9860714,
        size.height * 0.6253760);
    path_0.cubicTo(
        size.width * 0.9904486,
        size.height * 0.6173247,
        size.width * 0.9939800,
        size.height * 0.6070400,
        size.width * 0.9963943,
        size.height * 0.5953100);
    path_0.cubicTo(
        size.width * 0.9988086,
        size.height * 0.5835800,
        size.width * 1.000043,
        size.height * 0.5707153,
        size.width,
        size.height * 0.5577000);
    path_0.lineTo(size.width, size.height * 0.1714287);
    path_0.cubicTo(
        size.width,
        size.height * 0.1259627,
        size.width * 0.9922686,
        size.height * 0.08235933,
        size.width * 0.9785029,
        size.height * 0.05021027);
    path_0.cubicTo(size.width * 0.9647400, size.height * 0.01806120,
        size.width * 0.9460714, 0, size.width * 0.9266057, 0);
    path_0.lineTo(size.width * 0.07339457, 0);
    path_0.cubicTo(
        size.width * 0.05392914,
        0,
        size.width * 0.03526086,
        size.height * 0.01806120,
        size.width * 0.02149674,
        size.height * 0.05021027);
    path_0.cubicTo(size.width * 0.007732600, size.height * 0.08235933, 0,
        size.height * 0.1259627, 0, size.height * 0.1714287);
    path_0.lineTo(0, size.height * 0.8285733);
    path_0.cubicTo(
        0,
        size.height * 0.8740400,
        size.width * 0.007732600,
        size.height * 0.9176400,
        size.width * 0.02149674,
        size.height * 0.9497867);
    path_0.cubicTo(
        size.width * 0.03526086,
        size.height * 0.9819400,
        size.width * 0.05392914,
        size.height,
        size.width * 0.07339457,
        size.height);
    path_0.lineTo(size.width * 0.8106429, size.height);
    path_0.cubicTo(
        size.width * 0.8162143,
        size.height * 1.000100,
        size.width * 0.8217229,
        size.height * 0.9972200,
        size.width * 0.8267429,
        size.height * 0.9915800);
    path_0.cubicTo(
        size.width * 0.8317657,
        size.height * 0.9859400,
        size.width * 0.8361686,
        size.height * 0.9776933,
        size.width * 0.8396143,
        size.height * 0.9674667);
    path_0.cubicTo(
        size.width * 0.8430600,
        size.height * 0.9572400,
        size.width * 0.8454600,
        size.height * 0.9453067,
        size.width * 0.8466286,
        size.height * 0.9325800);
    path_0.cubicTo(
        size.width * 0.8477971,
        size.height * 0.9198600,
        size.width * 0.8477029,
        size.height * 0.9066800,
        size.width * 0.8463543,
        size.height * 0.8940467);
    path_0.cubicTo(
        size.width * 0.8438543,
        size.height * 0.8721400,
        size.width * 0.8429086,
        size.height * 0.8494267,
        size.width * 0.8435514,
        size.height * 0.8268000);
    path_0.close();

    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
