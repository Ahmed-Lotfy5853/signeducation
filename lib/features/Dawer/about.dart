
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
             Text('   تم تنفيذ هذا البرنامج تحت إشراف  ',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: getTextSize(context).scale(17)),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,),
             Text('د / أميره أحمد فؤاد',style: TextStyle(fontWeight: FontWeight.bold,fontSize: getTextSize(context).scale(17)),
                textDirection: TextDirection.rtl, textAlign: TextAlign.center),
             Text('إعداد الطلاب',style: TextStyle(fontWeight: FontWeight.bold,fontSize: getTextSize(context).scale(17)),
                textDirection: TextDirection.rtl, textAlign: TextAlign.center),
             Text(
              '''
            محمد مصطفى جابر حوده     
            سهيلة أشرف فتحى حسين أحمد
            محمد صبحى إبراهيم سالم
            ساره فرج على عبدالمحسن
            رنا السعيد السيد إبراهيم سليم
            محمد نصر عبدالله أحمد ربيع
            محمد عبدالعاطى محمد موسى
            يسرى محمد عبدالرازق أحمد
            أحمد عبده سعد كمال''',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: getTextSize(context).scale(14))
            )
          ],
        ),
      ),
    );
  }
}
