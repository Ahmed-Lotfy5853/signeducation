import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/constants.dart';

import '../../../../core/navigation/route_path.dart';
import '../../../../core/resources/assets.dart';

class SplashView extends StatelessWidget {
   SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(ImageManager.logo),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      duration: 1000,
      nextScreen: Container(),
      nextRoute: checkLogin ?RoutePath.bottomNavigator:RoutePath.welcome,
      splashIconSize: MediaQuery.sizeOf(context).width * 0.8,
    );
  }
}
