import 'package:flutter/material.dart';
import 'package:minimal_todo_shared/theme/app_theme.dart';
import 'package:minimal_todo_shared/widgets/text/app_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;
  void toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: const AppTypography(),
    );
  }
}

class AppTypography extends StatelessWidget {
  const AppTypography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText.heading('Typography'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              AppText.title('Title  32px/Bold'),
              AppText.heading('Heading  20px/Semibold'),
              AppText.heading2('Heading2  16px/Semibold'),
              AppText.paragraph('Paragraph  14px/Semibold'),
              AppText.paragraph2(
                'Paragraph2  14px/regular',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyApp.of(context)!.toggleTheme();
        },
      ),
    );
  }
}
