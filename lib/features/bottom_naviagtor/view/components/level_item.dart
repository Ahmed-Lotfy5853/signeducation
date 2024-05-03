import 'package:flutter/material.dart';
import 'package:signeducation/core/local_data/shared_preferenc.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/core/widgets/toast.dart';

class LevelItem extends StatelessWidget {
  const LevelItem(
      {super.key,
      required this.title,
      required this.levelCategories,
      required this.colors});
  final String title;
  final Levels levelCategories;
  final Color colors ;
  @override
  Widget build(BuildContext context) {
    var provider = providerItemSelected(context);
    return Expanded(
      child: InkWell(
        onTap: () {
          SharedPreference.getStringList(SharedPreference.checkLevel).then((value) {
            // check if len of list  = null 
            int length = value.length ;
            if (levelCategories == Levels.easy) {
              provider.currentItem(3);
            } else if (levelCategories == Levels.medium) {
             length >= 2
                  ? provider.currentItem(4)
                  : toast('يجب عليك ان إجتياز المستوى السهل أولا',context);
            } else if (levelCategories == Levels.hard) {
              length >= 7
                  ? provider.currentItem(5)
                  : toast('يجب عليك ان إجتياز المستوى المتوسط أولا',context);
            }
          });
        },
        child: Container(
          width: getWidth(context),
          height: getHeight(context) * 0.025,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: colors,
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: getTextSize(context).scale(40)),
          ),
        ),
      ),
    );
  }
}
