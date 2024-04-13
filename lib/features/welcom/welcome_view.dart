import 'package:flutter/material.dart';
import 'package:signeducation/core/local_data/shared_preferenc.dart';
import 'package:signeducation/core/navigation/route_path.dart';
import 'package:signeducation/core/resources/assets.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = getHeight(context);
    var width = getWidth(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            //item1
            Text(
              "Smart-Learn",
              style: TextStyle(
                  color: const Color(0xff3855A5),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'cairo',
                  fontSize: getTextSize(context).scale(30)),
            ),
            //item 2
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: CircleAvatar(
                radius: height * 0.08,
                backgroundImage: const AssetImage(ImageManager.logo),
              ),
            ),
            //item3
            SizedBox(
              height: getHeight(context) * 0.04,
            ),
            SizedBox(
              width: width * 0.7,
              height: height * 0.05,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff3855A5))),
                onPressed: () {
                  SharedPreference.setLogin(true).then((value) =>
                      Navigator.of(context)
                          .pushReplacementNamed(RoutePath.bottomNavigator));
                },
                child: Text(
                  'إبـــــــدأ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'cairo',
                    fontSize: getTextSize(context).scale(30),
                  ),
                ),
              ),
            ),
           const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
