import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/categories/view/components/category_item.dart';

// ignore: must_be_immutable
class CategoriesView extends StatelessWidget {
  CategoriesView({super.key, required this.categories, required this.level});
  final List<Categories> categories;
  final Levels level;
  var arrangeItem = <QuiltedGridTile>[];

//generate list of pattern
  void generateElement(int length) {
    //if even
    if (length % 2 == 0) {
      for (int i = 0; i < length; i++) {
        arrangeItem.add(const QuiltedGridTile(1, 1));
      }
    }
    //if odd
    else {
      for (int i = 0; i < length - 1; i++) {
        arrangeItem.add(const QuiltedGridTile(1, 1));
      }
      arrangeItem.add(const QuiltedGridTile(1, 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    generateElement(categories.length);
    return GridView.custom(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: categories.length == 2 ? 1 : 2,
        mainAxisSpacing:
        categories.length == 2 ? 10 : getHeight(context) * 0.02,
        crossAxisSpacing: 10,
        repeatPattern: QuiltedGridRepeatPattern.same,
        pattern: arrangeItem,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => CategoryItem(
          level: level,
          category: categories[index],
          categoryItem: categoriesMap[categories[index]]!,
        ),
        childCount: categories.length,
      ),
    );
  }
}
