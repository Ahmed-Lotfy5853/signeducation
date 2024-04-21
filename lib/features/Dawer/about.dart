import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/assets.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حول'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: getHeight(context) * 0.01,
                  bottom: getHeight(context) * 0.01),
              child: CircleAvatar(
                radius: getHeight(context) * 0.06,
                backgroundImage: const AssetImage(ImageManager.logo),
              ),
            ),
            const Text('تم تنفيذ هذا البرنامج تحت إشراف')
          ],
        ),
      ),
    );
  }
}
