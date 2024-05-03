import 'package:flutter/material.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

 Widget customListTile(Icon icon,String text,context)
{
  return Card(margin: EdgeInsets.symmetric(
    horizontal: getWidth(context)*0.02,
    vertical: getHeight(context)*0.002,
    ),
    child: ListTile(leading: icon,title: Text(text,textDirection: TextDirection.rtl,),),);
}