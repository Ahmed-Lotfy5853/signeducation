import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/categories/view/components/category_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.categories});
  final List<Categories> categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.only(
            right: 10,
            left: 10,
            bottom: 10,
            top: 10,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: getWidth(context) * 0.3,
            mainAxisExtent: getHeight(context) * 0.06,
            mainAxisSpacing: 5,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) => CategoryItem(
            categoryItem: categoriesMap[categories[index]]!,
          ),
          itemCount: categories.length,
        ),
      ),
    );
  }
}
