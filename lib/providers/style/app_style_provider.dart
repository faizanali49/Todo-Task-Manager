import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/providers/style/theme_provider.dart';
import 'package:todo/styles/app_style.dart';

final appstyleProvider = Provider<AppStyle>((ref) {
  // final isDarkMode = ref.watch(themeProvider) == ThemeMode.dark;
  final themeMode = ref.watch(themeProvider);
  final isDarkMode = themeMode == ThemeMode.dark;
  return AppStyle(isDarkMode: isDarkMode);
});
