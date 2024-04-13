import 'package:flutter/material.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
//required this.index ,required this.check
class LessonItem extends StatelessWidget {
   const LessonItem({super.key, required this.label, required this.tap,});

  final String label;
  final void Function() tap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: getWidth(context) * 0.4,
        height: getHeight(context) * 0.025,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleMedium,
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
