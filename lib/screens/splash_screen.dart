import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_game/res/color.dart';

import 'home_screen.dart';

///Created by Rohit Sahu on 04-07-2021

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigate();
    super.initState();
  }

  void _navigate() {
    Future.delayed(Duration(seconds: 2), () async {
      Get.offAll(() => HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Center(
        child: Image.asset(
          'assets/countdown.png',
          height: 150,
          width: 150,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
