import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static const bool isDarkTheme = false;
  static const Color primaryColor = Color(0xFF1f2539);
  static const Color accentColor = Colors.white;

  static const Color backgroundDark = Colors.black;
  static const Color backgroundLight = Color(0xFFF3F6F9);
  static const Color backgroundColor = isDarkTheme ? backgroundDark : backgroundLight;

  static const Color itemBackgroundColor = isDarkTheme ? Color(0xFF151922) : Colors.white;

  static const Color primaryColorDark = Color(0xFF1f2539);
  static const Color greyColor = Colors.grey;

  static const Color dividerColor = isDarkTheme ? Colors.white : Colors.grey;
  static const Color iconColor = isDarkTheme ? Colors.white : primaryColor;

  static const Color textColorDark = Color(0xFF1f2539);
  static const Color textColorWhite = Colors.white;
  static const Color textColorBlack = Colors.black;
  static const Color textColorGrey = Colors.grey;
  static const Color textColorBlue = Colors.blue;
  static const Color textDarkBackgroundColor = isDarkTheme ? textColorWhite : textColorDark;

  static const List<Color> chatColors = [
    Color(0xFFE6E6FA),
    Color(0xFFE0FFFF),
    Color(0xFFFFFAFA),
    Color(0xFFF0FFF0),
    Color(0xFFF5FFFA),
    Color(0xFFF0FFFF),
    Color(0xFFF0F8FF),
    Color(0xFFF8F8FF),
    Color(0xFFF5F5F5),
    Color(0xFFFFF5EE),
    Color(0xFFF5F5DC),
    Color(0xFFFDF5E6),
    Color(0xFFFFFAF0),
    Color(0xFFFFFFF0),
    Color(0xFFFAEBD7),
    Color(0xFFFAF0E6),
    Color(0xFFFFF0F5),
    Color(0xFFFFE4E1)
  ];
}

extension RandomListItem<T> on List<T> {
  T randomItem() {
    return this[Random().nextInt(length)];
  }
}
