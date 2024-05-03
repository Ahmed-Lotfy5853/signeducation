import 'package:flutter/material.dart';
import 'package:signeducation/core/local_data/shared_preferenc.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/features/categories/models/category_item_model.dart';

import '../../../../core/resources/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.categoryItem,
      required this.level,
      required this.category});
  final CategoryItemModel categoryItem;
  final Levels level;
  final Categories category;
  @override
  Widget build(BuildContext context) {
    var provider = providerItemSelected(context);
    return InkWell(
      onTap: () {
        
        //check if element is existed before or not
        // set data ,then go lesson screen
        SharedPreference.addValue(
                SharedPreference.checkLevel, categoryItem.title)
            .then((value) {
          if (appBarTitlies
              .contains(categoriesMap[categoryItem.category]!.title)) {
            SharedPreference.getStringList(SharedPreference.checkClicks)
                .then((value) {
              checkClicks = value;
              provider.currentItem(appBarTitlies
                  .indexOf(categoriesMap[categoryItem.category]!.title));
            });
          }
        });
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
