import 'package:flutter/material.dart';
import 'package:flutter_theming/screens/welcome_screen.dart';
import 'package:flutter_theming/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      home: const WelcomeScreen(),
    );
  }
}
