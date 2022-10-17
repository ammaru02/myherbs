import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myherbs/home.dart';
// import 'package:myherbs/onbording/onbording.dart';
import 'package:myherbs/page/profil.dart';
import 'package:myherbs/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myherbs/page/register.dart';
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
    return  FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'My Herbs',
              theme: ThemeData(
                primarySwatch: Colors.green,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: introduction ==0 ? const MyHomePageState(title: 'Introduction') : const Profil(),
            );
          }
        });
    
    // MaterialApp(
    //   title: 'Myherbs',
    //   theme: ThemeData(primarySwatch: Colors.blue),
    //   debugShowCheckedModeBanner: false,
    //   home: introduction ==0 ? MyHomePageState(title: 'Introduction') : Profil(),
    // );
    // 
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
    const pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 19,),
    bodyPadding: EdgeInsets.only(right: 30,left: 30,top: 16,bottom: 16),
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Welcome!",
          body: "MyHerbs Ini adalah aplikasi yang akan membantu kalian dalam mencari obat-obat herbal yang cocok untuk penyakit yang anda alami seperti rematik, hidung tersumbat dan banyak penyakit lainnya.",
          image: Image.asset('assets/on1.png', width: 250,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Home",
          body: "Fitur home untuk menampilkan halaman utama",
          image: Image.asset('assets/home.png', width: 250,),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "Upload",
        //   body: "Fitur upload untuk melihat data-data yang telah terupload di aplikasi MyHerbs",
        //   image: Image.asset('assets/upload.png', width: 250,),
        //   decoration: pageDecoration,
        // ),
        PageViewModel(
          title: "Profile",
          body: "Fitur profile untuk melihat data dari user",
          image: Image.asset('assets/profil.png', width: 250,),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "Add Data",
        //   body: "Fitur add data digunakan untuk menambahkan data-data obat herbal",
        //   image: Image.asset('assets/tambahdata.png', width: 250,),
        //   decoration: pageDecoration,
      //     footer: ElevatedButton(
      //       onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder){
      //   return const Profil();
      // }));},
      //       child: const Text("Start"),
      //     )
        // ),
      ],
      onDone: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder){
        return const Profil();
      }));
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      skipOrBackFlex: 1,
      back: const Icon(Icons.arrow_back),
      skip: const Text('skip',style: TextStyle(fontWeight: FontWeight.bold),),
      next: const Text('Next',style: TextStyle(fontWeight: FontWeight.bold),),
      done: const Text('Done',style: TextStyle(fontWeight: FontWeight.bold),),
      dotsDecorator: const DotsDecorator(
        size: Size(10,10),
        color: Colors.grey,
        activeSize: Size(10, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        )

      ),
    ); 
  }
}