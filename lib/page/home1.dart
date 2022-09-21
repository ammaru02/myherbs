import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
             MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.more_vert_rounded
                          // color: currentTab == 0 ? Colors.white : Colors.green,
                        ),
                      ],
                    ),
                  ),
            const Text(
              'Home',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: const Center(
          child: Text(
        'home screen',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
