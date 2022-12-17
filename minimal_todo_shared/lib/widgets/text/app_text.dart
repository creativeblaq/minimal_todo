import 'package:flutter/material.dart';

import '../../theme/theme_utils/utils.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final int? maxLines;
  final TextThemeStyle _style;
  final TextAlign? align;

  const AppText(this.text,
      {super.key, this.color, this.fontSize, this.maxLines, this.align})
      : _style = TextThemeStyle.paragraph2;

  const AppText.title(this.text,
      {super.key, this.color, this.fontSize, this.maxLines, this.align})
      : _style = TextThemeStyle.title;

  const AppText.heading(this.text,
      {super.key, this.color, this.fontSize, this.maxLines, this.align})
      : _style = TextThemeStyle.heading;

  const AppText.heading2(this.text,
      {super.key, this.color, this.fontSize, this.maxLines, this.align})
      : _style = TextThemeStyle.heading2;

  const AppText.paragraph(this.text,
      {super.key, this.color, this.fontSize, this.maxLines, this.align})
      : _style = TextThemeStyle.paragraph;

  const AppText.paragraph2(this.text,
      {super.key, this.color, this.fontSize, this.maxLines, this.align})
      : _style = TextThemeStyle.paragraph2;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextThemeStyle.getTextStyle(context, _style).copyWith(
        color: color,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
      textAlign: align,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
    );
  }
}
