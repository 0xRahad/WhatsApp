import 'package:flutter/material.dart';
import 'package:whatsapp/common/theme/dark_theme.dart';
import 'package:whatsapp/common/theme/light_theme.dart';
import 'package:whatsapp/feature/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: WelcomePage(),
    );
  }
}
