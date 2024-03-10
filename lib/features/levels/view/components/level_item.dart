import 'package:flutter/material.dart';
import 'package:signeducation/core/navigation/route_path.dart';
import 'package:signeducation/core/resources/colors.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

class LevelItem extends StatelessWidget {
  const LevelItem(
      {super.key, required this.title, required this.levelCategories});
  final String title;
  final Levels levelCategories;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutePath.categories,
            arguments: levelsMap[levelCategories]);
      },
      child: Container(
        width: getWidth(context) * 0.3,
        height: getHeight(context) * 0.025,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
