import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

import '../components/level_item.dart';

class LevelsView extends StatelessWidget {
  const LevelsView({super.key});
  static const List<Widget> _levelsItems = [
    LevelItem(
      title: 'سهل',
      levelCategories: Levels.easy,
    ),
    LevelItem(
      title: 'متوسط',
      levelCategories: Levels.medium,
    ),
    LevelItem(
      title: 'صعب',
      levelCategories: Levels.hard,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getWidth(context),
        height: getHeight(context),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _levelsItems,
        ),
      ),
    );
  }
}
