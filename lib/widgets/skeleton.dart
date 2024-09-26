import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final bool isCircle;
  const Skeleton(
      {super.key,
      this.width = 100.0,
      this.height = 100.0,
      this.radius = 16.0,
      this.isCircle = false});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircle ? null : BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
