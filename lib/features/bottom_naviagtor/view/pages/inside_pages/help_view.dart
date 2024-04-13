import 'package:flutter/material.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/bottom_naviagtor/view/components/custom_listTile.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(flex: 2,),
        CircleAvatar(
          radius: getHeight(context)*0.03,
          backgroundImage: AssetImage('assets/images/help.png'),
        ),
        Spacer(flex: 1,),
        CustomListTile(const Icon(Icons.phone),'الدعم الفنى',context),
        CustomListTile(const Icon(Icons.settings),'الإعدادات',context),
        CustomListTile(const Icon(Icons.report),'شكاوي',context),
        Spacer(flex: 5,),
      ],
    );
  }
}