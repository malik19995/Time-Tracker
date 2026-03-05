import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';

import '../../core/constants/colors.dart';

final logger = Logger();

extension CapExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String get inCaps => '${this[0].toUpperCase()}${substring(1)}';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstofEach =>
      split(" ").map((str) => str.capitalize).join(" ");
}

///
///
/// SizedBox shorthand
SizedBox sized({double? h, double? w}) => SizedBox(
      height: h ?? 0,
      width: w ?? 0,
    );

///
///
/// const Spacer shorthand
Spacer spacer() => const Spacer();

///
///
/// Utility - To set status and navigation bar colors
void setStatusBarColors(BuildContext context, bool isDark) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Theme.of(context).scaffoldBackgroundColor,
    systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
    statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    systemNavigationBarIconBrightness:
        isDark ? Brightness.light : Brightness.dark,
  ));
}

///
///
/// Flutter toast helper
Future showToast(String string) {
  return Fluttertoast.showToast(
    msg: string,
    backgroundColor: AppColors.veryDarkBlue,
    textColor: AppColors.white,
  );
}
