//DONE: 1 Pub get google fonts

//DONE: 2 Create App TextTheme

import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle title;
  final TextStyle heading;
  final TextStyle heading2;
  final TextStyle paragraph;
  final TextStyle paragraph2;

  AppTextTheme(
      {required this.title,
      required this.heading,
      required this.heading2,
      required this.paragraph,
      required this.paragraph2});

  @override
  AppTextTheme copyWith({
    TextStyle? title,
    TextStyle? heading,
    TextStyle? heading2,
    TextStyle? paragraph,
    TextStyle? paragraph2,
  }) {
    return AppTextTheme(
      title: title ?? this.title,
      heading: heading ?? this.heading,
      heading2: heading2 ?? this.heading2,
      paragraph: paragraph ?? this.paragraph,
      paragraph2: paragraph2 ?? this.paragraph2,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
      ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) {
      return this;
    }
    return AppTextTheme(
      title: TextStyle.lerp(title, other.title, t)!,
      heading: TextStyle.lerp(heading, other.heading, t)!,
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      paragraph: TextStyle.lerp(paragraph, other.paragraph, t)!,
      paragraph2: TextStyle.lerp(paragraph2, other.paragraph2, t)!,
    );
  }
}


//TODO: 3 Create the AppText widget