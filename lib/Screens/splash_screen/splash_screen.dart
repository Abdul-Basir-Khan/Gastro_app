import 'package:flutter/material.dart';

import 'dart:async';

import 'package:gastro_app/Screens/splash_screen/splash_screen_2.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
     const  Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen2()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
              fit: BoxFit.cover,
              image:const AssetImage("Assets/images/SplashScreen/Splash1.jpg")),
        ],
      ),
    );
  }
}
