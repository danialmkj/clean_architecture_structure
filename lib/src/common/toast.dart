import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mattab/src/common/colors.dart';

Future<dynamic> showToast({
  required String msg,
  Color? backgroundColor,
  Color? textColor,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: backgroundColor ?? ColorLight.primary,
    textColor: textColor ?? Colors.white,
  );
}
