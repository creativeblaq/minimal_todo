import 'package:flutter/material.dart';
import 'package:minimal_todo_shared/theme/theme_utils/utils.dart';

enum TextThemeStyle {
  title,
  heading,
  heading2,
  paragraph,
  paragraph2;

  static TextStyle getTextStyle(BuildContext context, TextThemeStyle style) {
    switch (style) {
      case TextThemeStyle.title:
        return context.textTheme.title;
      case TextThemeStyle.heading:
        return context.textTheme.heading;

      case TextThemeStyle.heading2:
        return context.textTheme.heading2;

      case TextThemeStyle.paragraph:
        return context.textTheme.paragraph;

      case TextThemeStyle.paragraph2:
        return context.textTheme.paragraph2;
    }
  }
}
