import 'package:fluttertoast/fluttertoast.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';

void toast(String msg, context) => Fluttertoast.showToast(
    msg: msg, gravity: ToastGravity.CENTER, fontSize: getTextSize(context).scale(30));
