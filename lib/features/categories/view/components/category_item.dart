import 'package:flutter/material.dart';
import 'package:signeducation/core/navigation/route_path.dart';
import 'package:signeducation/features/categories/models/category_item_model.dart';

import '../../../../core/resources/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryItem});

  final CategoryItemModel categoryItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutePath.lesson,
            arguments: categoriesMap[categoryItem.category]!.lessons);
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: categoryItem.backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(categoryItem.cover), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(4, 4),
                        blurRadius: 5),
                  ]),
            ),
          ),
          Text(
            categoryItem.title,
            // maxLines: 1,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            // overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }
}
