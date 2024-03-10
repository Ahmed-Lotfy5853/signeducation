import 'package:flutter/cupertino.dart';

double getWidth(BuildContext context,)=>MediaQuery.sizeOf(context).width;
double getHeight(BuildContext context,)=>MediaQuery.sizeOf(context).height*MediaQuery.devicePixelRatioOf(context);
TextScaler getTextSize(BuildContext context,)=>MediaQuery.textScalerOf(context);