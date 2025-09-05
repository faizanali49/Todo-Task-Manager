import 'package:flutter/widgets.dart';
import 'package:todo/styles/colors.dart';

class AppStyle {
  final bool isDarkMode;

  AppStyle({required this.isDarkMode});

  Color get primary => isDarkMode ? AppColors.primaryD : AppColors.primaryL;
  Color get secondary =>
      isDarkMode ? AppColors.secondaryD : AppColors.secondaryL;
  Color get background =>
      isDarkMode ? AppColors.backgroundD : AppColors.backgroundL;
}
