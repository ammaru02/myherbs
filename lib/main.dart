import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myherbs/onbording/onbording.dart';
import 'package:myherbs/page/profil.dart';
import 'package:myherbs/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:introduction_screen/introduction_screen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:introduction_screen/introduction_screen.dart';
int introduction = 0;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await initIntroduction();
  runApp(const MyApp());
  }

Future initIntroduction() async{
  final prefs = await SharedPreferences.getInstance();

  int? intro = prefs.getInt('introduction');
  print('intro : $intro');
  if(intro != null && intro == 1){
    return introduction = 1;
  }
  prefs.setInt('introduction', 1);
} 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Myherbs',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: introduction ==0 ? MyHomePageState(title: 'Introduction') : Profil(),
    );
    // FutureBuilder(
    //     future: Future.delayed(const Duration(seconds: 3)),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return const SplashScreen();
    //       } else {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: 'My Herbs',
    //           theme: ThemeData(
    //             primarySwatch: Colors.blue,
    //             visualDensity: VisualDensity.adaptivePlatformDensity,
    //           ),
    //           home: introduction == 0 ? OnbordingScreen() : Profil(),
    //         );
    //       }
    //     });
  }
}

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({super.key, required this.title});
  final String title;

  @override
  State<MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePageState> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 19),
    bodyPadding: EdgeInsets.all(16)
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "hello",
          body: "Selamat Datang",
          image: Image.asset('assets/google.png', width: 350,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "hello",
          body: "Selamat Datang",
          image: Image.asset('assets/google.png', width: 350,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "hello",
          body: "Selamat Datang",
          image: Image.asset('assets/google.png', width: 350,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "hello",
          body: "Selamat Datang",
          image: Image.asset('assets/google.png', width: 350,),
          decoration: pageDecoration,
          footer: ElevatedButton(
            onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder){
        return Profil();
      }));},
            child: Text("Start"),
          )
        ),
      ],
      onDone: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder){
        return Profil();
      }));
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      skipOrBackFlex: 1,
      back: Icon(Icons.arrow_back),
      skip: Text('skip',style: TextStyle(fontWeight: FontWeight.bold),),
      next: Icon(Icons.arrow_forward),
      done: Text('Done',style: TextStyle(fontWeight: FontWeight.bold),),
      dotsDecorator: DotsDecorator(
        size: Size(10,10),
        color: Colors.grey,
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        )

      ),
    ); 
  }
}