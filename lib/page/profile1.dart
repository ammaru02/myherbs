import 'package:flutter/material.dart';
import 'package:myherbs/home.dart';

class Profilanda extends StatefulWidget {
  const Profilanda({Key? key}) : super(key: key);

  @override
  State<Profilanda> createState() => _ProfilandaState();
}

class _ProfilandaState extends State<Profilanda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff007251),
        shadowColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 12, top: 20),
              child: Text(
                'MyHerbs',
                style: TextStyle(color: Colors.green),
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(margin: const EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
                const Text(
                  'Muhammad Ammar',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[350],
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
            margin: const EdgeInsets.only(bottom: 2),
            color: Colors.white,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Akun',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color(0xff007251)),
                ),
                Text('asep@gmail.com'),
              ],
            ),
          ),
          Container(
            color: Colors.grey[350],
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
            margin: const EdgeInsets.only(bottom: 2),
            color: Colors.white,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'ammaru02',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                Text('Username',style: TextStyle(fontSize: 10),),
              ],
            ),
          ),
          Container(
            color: Colors.grey[350],
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
