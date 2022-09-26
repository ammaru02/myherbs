import 'package:flutter/material.dart';
import 'package:myherbs/button/costumbutton.dart';
import 'package:myherbs/page/profil.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => const OnbordingContent(
                image: "assets/google.png",
                title: "selamat datang",
                description: "hello guys",
              ),
            ),
          ),
          // SizedBox(
          //   height: 60,
          //   width: 60,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: ElevatedButton.styleFrom(shape: CircleBorder()),
          //     child: SvgPicture.assets("assets/google.png",color: Colors.white),
          //   ),
          // ),
        ],
      )),
    );
  }
}

class OnbordingContent extends StatelessWidget {
  const OnbordingContent(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);
  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        ButtonCustom(
              warna: Colors.green,
              warna1: Colors.white,
              button: "Next",
              onpress: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder){
                  return const Profil();
                }));
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Profil(),
                //     ));
              },
            ),
        const Spacer(),
      ],
    );
  }
}
