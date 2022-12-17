import 'package:flutter/material.dart';
import 'package:minimal_todo_shared/theme/typography/app_text_theme.dart';

extension ThemeEx on BuildContext {
  AppTextTheme get textTheme => Theme.of(this).extension<AppTextTheme>()!;
}
