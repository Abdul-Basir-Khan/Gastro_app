import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/log_In/log_in_screen.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LogInScreen(
        )),
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

              image:const AssetImage("Assets/images/SplashScreen/Splash2.jpg")),
        ],
      ),
    );
  }
}