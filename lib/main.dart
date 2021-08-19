import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_game/res/color.dart';
import 'package:number_game/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orangeAccent[900],
        primaryColor: colorPrimary,
        accentColor: colorPrimary,
      ),
      home: SplashScreen(),
    );
  }
}