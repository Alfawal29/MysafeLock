import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_app.dart';
import 'package:flutter_application_1/Style/app_theme.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
     home: const SignApp(),
    );
  }
}   
 