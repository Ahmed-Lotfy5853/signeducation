import 'package:flutter/material.dart';

class LessonCover extends StatelessWidget {
  const LessonCover(
      {super.key, required this.name, required this.width, this.height});
  final String name;
  final double width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      width: width,
      height: height,
    );
  }
}
