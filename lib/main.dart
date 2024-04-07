import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signeducation/features/bottom_naviagtor/view/components/provider/item_selected_provider.dart';
import 'package:signeducation/core/resources/colors.dart';
import 'core/navigation/app_route.dart';
import 'core/navigation/route_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectedItemProiver(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRoute.generateRoute(settings),
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: ColorManager.primaryColor),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.grey.shade50,
            fontFamily: 'cairo'),
        initialRoute: RoutePath.splash,
        // home: const SplashView(),
      ),
    );
  }
}
