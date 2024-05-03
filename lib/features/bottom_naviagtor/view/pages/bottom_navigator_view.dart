import 'package:flutter/material.dart';
import 'package:signeducation/core/navigation/route_path.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/bottom_naviagtor/view/pages/inside_pages/back.dart';
import 'package:signeducation/features/bottom_naviagtor/view/pages/inside_pages/help_view.dart';
import 'package:signeducation/features/bottom_naviagtor/view/pages/inside_pages/home_view.dart';
import 'package:signeducation/features/categories/view/pages/categories_view.dart';
import 'package:signeducation/features/lesson/view/pages/lesson_view.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({super.key});
  final _views = [
    const Help(),
    const Home(),
    const Back(),
    CategoriesView(
      categories: levelsMap[Levels.easy]!,
      level: Levels.easy,
    ),
    CategoriesView(
      categories: levelsMap[Levels.medium]!,
      level: Levels.medium,
    ),
    CategoriesView(
      categories: levelsMap[Levels.hard]!,
      level: Levels.hard,
    ),
    LessonView(lessons: categoriesMap[Categories.numbers]!.lessons,categories:Categories.numbers ,),
    LessonView(lessons: categoriesMap[Categories.characters]!.lessons,categories:Categories.characters ,),
    LessonView(lessons: categoriesMap[Categories.family]!.lessons,categories:Categories.family ,),
    LessonView(lessons: categoriesMap[Categories.animals]!.lessons,categories:Categories.animals ,),
    LessonView(lessons: categoriesMap[Categories.food]!.lessons,categories: Categories.food,),
    LessonView(lessons: categoriesMap[Categories.home]!.lessons,categories:Categories.home ,),
    LessonView(lessons: categoriesMap[Categories.time]!.lessons,categories:Categories.time ,),
    LessonView(lessons: categoriesMap[Categories.education]!.lessons,categories:Categories.education ,),
    LessonView(lessons: categoriesMap[Categories.health]!.lessons,categories:Categories.health ,),
    LessonView(lessons: categoriesMap[Categories.ideas]!.lessons,categories:Categories.ideas ,),
    LessonView(lessons: categoriesMap[Categories.meaning]!.lessons,categories: Categories.meaning,),
    LessonView(lessons: categoriesMap[Categories.nature]!.lessons,categories:Categories.nature ,),
    LessonView(lessons: categoriesMap[Categories.travelling]!.lessons,categories: Categories.travelling,),

  ];
  
  final titlesDrawer = ['المراجع', 'المساعدة', 'حول'];
  final iconsDrawe = const [
    Icon(Icons.book),
    Icon(Icons.help),
    Icon(Icons.question_answer)
  ];
  final bottomItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: "Back"),
  ];
  @override
  Widget build(BuildContext context) {
    var provider = providerItemSelected(context);
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: getHeight(context) * 0.02),
            child: ListView.separated(
                itemBuilder: (_, int index) => InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        if (index == 0) {
                          Navigator.of(context).pushNamed(RoutePath.reference);
                        } else if (index == 1) {
                          provider.currentItem(0);
                        } else if (index == 2) {
                          Navigator.of(context).pushNamed(RoutePath.about);
                        }
                      },
                      child: ListTile(
                        title: Text(titlesDrawer[index]),
                        leading: iconsDrawe[index],
                      ),
                    ),
                separatorBuilder: (_, int index) =>const Divider(),
                itemCount: 3),
          ),
        ),
        appBar: AppBar(
          title: Text(
            appBarTitlies[provider.selectedItem],
          ),
          centerTitle: true,
        ),
        body: _views[provider.selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          items: bottomItems,
          currentIndex: provider.selectedItem < bottomItems.length
              ? provider.selectedItem
              : 1,
          onTap: (int currentIndex) {
            if (currentIndex == 2) {
              Navigator.of(context).pushReplacementNamed(RoutePath.welcome);
              provider.currentItem(1);
            } else {
              provider.currentItem(currentIndex);
            }
          },
        ),
      ),
    );
  }
}
