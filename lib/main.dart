import 'package:flutter/material.dart';
import 'package:myherbs/page/profil.dart';
import 'package:myherbs/splash/splash.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return SplashScreen();
      } else {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Herbs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Profil(),
    );
      }
    });
  }
}

