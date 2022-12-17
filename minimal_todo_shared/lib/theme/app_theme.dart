import 'package:flutter/material.dart';
import 'package:minimal_todo_shared/theme/typography/app_text_theme.dart';
import 'package:minimal_todo_shared/theme/typography/type_constants.dart';

class AppTheme {
  //light
  static final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    extensions: [
      AppTextTheme(
          title: title.copyWith(color: Colors.blue, fontSize: 40),
          heading: heading,
          heading2: heading2,
          paragraph: paragraph,
          paragraph2: paragraph2),
    ],
  );
  //dark
  static final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    extensions: [
      AppTextTheme(
          title: title,
          heading: heading,
          heading2: heading2,
          paragraph: paragraph,
          paragraph2: paragraph2),
    ],
  );
}
