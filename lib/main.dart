import 'package:flutter/material.dart';
import 'package:ui_2/clear.dart';
import 'package:ui_2/detail.dart';
import 'package:ui_2/home_screen.dart';
import 'package:ui_2/light_rain.dart';
import 'package:ui_2/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: SafeArea(child:WelcomeScreen()));
  }
}
