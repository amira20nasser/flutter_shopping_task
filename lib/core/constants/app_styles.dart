import 'dart:developer';

import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static textStyle30(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 30),
    fontWeight: FontWeight.normal,
    color: AppColors.textDark,

    letterSpacing: 1.2,
  );

  static textStyle18(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 18),
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
  );

  static textStyle16(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static textStyle20(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 20),
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static textStyle14(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 14),
    fontWeight: FontWeight.normal,
  );
}

double getResponsiveFontSize(
  BuildContext context, {
  required double baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  log(
    "fontsize $baseFontSize scaleFactor $scaleFactor LowerLimit $lowerLimit upperLimit $upperLimit ,responsiveFontSize $responsiveFontSize ",
  );
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 550;
  } else if (width < 900) {
    return width / 1000;
  }
  return width / 2000;
}
