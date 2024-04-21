import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/bottom_naviagtor/view/components/level_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});
 static const List<Widget> _levelsItems = [
    LevelItem(
      title: 'القسم الإبتدائى',
      levelCategories: Levels.easy,
      colors: Colors.yellow,
    ),
    LevelItem(
      title: 'القسم المتوسط',
      levelCategories: Levels.medium,
      colors: Colors.orange,
    ),
    LevelItem(
      title: 'القسم المتطور',
      levelCategories: Levels.hard,
      colors: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getWidth(context),
        height: getHeight(context),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _levelsItems,
        ),
      );
  }
}