import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Container(width: 200, height: 200,
        child: Image.asset("assets/logo.png"),),
      ),),
    );
  }
}