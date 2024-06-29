import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teachbear/pages/start_page.dart';
import 'package:teachbear/theme/theme.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.system, // or ThemeMode.light or ThemeMode.dark
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: Theme.of(context).brightness == Brightness.dark
              ? const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          )
              : const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          ),
          child: child!,
        );
      },
    );
  }
}