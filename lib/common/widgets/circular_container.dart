import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.radius = 400,
    this.backgroundcolor = Colors.white,
  });

  final double? width;
  final double? height;
  final double? padding;
  final double? radius;
  final Color? backgroundcolor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!), color: backgroundcolor),
      child: child,
    );
  }
}
