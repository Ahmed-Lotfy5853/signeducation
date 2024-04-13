import 'package:flutter/material.dart';
import 'package:signeducation/core/navigation/route_path.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/features/bottom_naviagtor/view/pages/inside_pages/back.dart';
import 'package:signeducation/features/bottom_naviagtor/view/pages/inside_pages/help_view.dart';
import 'package:signeducation/features/bottom_naviagtor/view/pages/inside_pages/home_view.dart';
import 'package:signeducation/features/categories/view/pages/categories_view.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({super.key});
  final _views = [
    const Help(),
    const Home(),
    const Back(),
    CategoriesView(categories: levelsMap[Levels.easy]!,level: Levels.easy,),
    CategoriesView(categories: levelsMap[Levels.medium]!,level: Levels.medium,),
    CategoriesView(categories: levelsMap[Levels.hard]!,level: Levels.hard,),
  ];
  final titles = ['Help', 'Home', 'Back','سهل','متوسط','صعب'];
  final bottomItems=const [
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: "Back"),
        ];
  @override
  Widget build(BuildContext context) {
    var provider = providerItemSelected(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[provider.selectedItem],),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: _views[provider.selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems,
        currentIndex: provider.selectedItem <bottomItems.length?provider.selectedItem :1,
        onTap: (int currentIndex) {
          if(currentIndex==2)
          {
            Navigator.of(context).pushReplacementNamed(RoutePath.splash);
            provider.currentItem(1);
          }
          else{
               provider.currentItem(currentIndex);
          }
         
        },
      ),
    );
  }
}
