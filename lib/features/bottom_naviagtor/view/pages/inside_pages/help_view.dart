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
       const Spacer(flex: 2,),
        CircleAvatar(
          radius: getHeight(context)*0.03,
          backgroundImage: const AssetImage('assets/images/help.png'),
        ),
        const Spacer(flex: 1,),
        customListTile(const Icon(Icons.phone),'الدعم الفنى',context),
        customListTile(const Icon(Icons.settings),'الإعدادات',context),
        customListTile(const Icon(Icons.report),'شكاوي',context),
        const Spacer(flex: 5,),
      ],
    );
  }
}