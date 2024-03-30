import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // TODO: implement getClip
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    final firstEndPoint = Offset(30, size.height-20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, firstEndPoint.dx, firstEndPoint.dy);

    final secondCurve = Offset(0 ,size.height-20);
    final secondEndPoint = Offset(size.width-30, size.height - 20);
    path.quadraticBezierTo(
        secondCurve.dx, secondCurve.dy, secondEndPoint.dx, secondEndPoint.dy);

    final thirdCurve = Offset(size.width, size.height - 20);
    final thirdEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdCurve.dx, thirdCurve.dy, thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
