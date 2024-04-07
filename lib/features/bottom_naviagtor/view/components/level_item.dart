import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

class LevelItem extends StatelessWidget {
  const LevelItem(
      {super.key, required this.title, required this.levelCategories,required this.colors});
  final String title;
  final Levels levelCategories;
  final colors ;
  @override
  Widget build(BuildContext context) {
     var provider = providerItemSelected(context);
    return Expanded(
      child: InkWell(
        onTap: () {
          if(levelCategories == Levels.easy){provider.currentItem(3);}
          else if(levelCategories == Levels.medium){provider.currentItem(4);}
          else if(levelCategories == Levels.hard){provider.currentItem(5);}
        },
        child: Container(
          width: getWidth(context) ,
          height: getHeight(context) * 0.025,
          alignment: Alignment.center,
          decoration: BoxDecoration(

              color: colors,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,fontSize:getTextSize(context).scale(40) ),
          ),
        ),
      ),
    );
  }
}
