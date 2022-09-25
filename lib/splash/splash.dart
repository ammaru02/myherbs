import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Color(0xff007251),
      body: Center(
        child: Container(width: 100, height: 100,
        child: Image.asset("assets/google.png"),),
      ),),
    );
  }
}