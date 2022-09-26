import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myherbs/page/profil.dart';
import 'package:myherbs/splash/splash.dart';
import 'package:introduction_screen/introduction_screen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:introduction_screen/introduction_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.all(16)
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Hallo Word',
          body: 'Belajarlah dari hari hari kemarin dan hiduplah untuk hari ini, lalu berharaplah untuk hari esok.',
          image: Image.asset('assets/google.png',width: 350,),
          decoration: pageDecoration,
          footer: ElevatedButton(
            onPressed: (){

            },
            child: Text('Start'),
          )
        )
      ],
      onDone: (){

      },
      showDoneButton: true,
      
    );
    
    // FutureBuilder(
    //     future: Future.delayed(Duration(seconds: 3)),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return SplashScreen();
    //       } else {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: 'My Herbs',
    //           theme: ThemeData(
    //             primarySwatch: Colors.blue,
    //             visualDensity: VisualDensity.adaptivePlatformDensity,
    //           ),
    //           home: const Profil(),
    //         );
    //       }
    //     });
  }
}
