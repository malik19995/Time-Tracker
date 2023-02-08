import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
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
sized({double? h, double? w}) => SizedBox(
      height: h ?? 0,
      width: w ?? 0,
    );

///
///
/// const Spacer shorthand
spacer() => const Spacer();

///
///
/// Utility - To set status and navigation bar colors
setStatusBarColors(BuildContext context, bool isDark) {
  FlutterStatusbarcolor.setStatusBarColor(
      Theme.of(context).scaffoldBackgroundColor);
  FlutterStatusbarcolor.setNavigationBarColor(
      Theme.of(context).scaffoldBackgroundColor);
  FlutterStatusbarcolor.setNavigationBarWhiteForeground(isDark ? true : false);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(isDark ? true : false);
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
