import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/bottom_naviagtor/view/components/custom_listTile.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: getHeight(context)*0.01),
          child: CircleAvatar(
            radius: getHeight(context) * 0.04,
            backgroundImage: const AssetImage('assets/images/help.png'),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: instructions.length,
              itemBuilder: (context, index) => customListTile(
                  const Icon(Icons.info), instructions[index], context)),
        )
      ],
    );
  }
}
