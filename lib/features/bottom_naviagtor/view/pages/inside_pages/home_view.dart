import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/bottom_naviagtor/view/components/level_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});
 static const List<Widget> _levelsItems = [
    LevelItem(
      title: 'سهل',
      levelCategories: Levels.easy,
      colors: Colors.blue,
    ),
    LevelItem(
      title: 'متوسط',
      levelCategories: Levels.medium,
      colors: Color.fromARGB(255, 25, 118, 210),
    ),
    LevelItem(
      title: 'صعب',
      levelCategories: Levels.hard,
      colors: Color.fromARGB(255, 12, 70, 156),
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