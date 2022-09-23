import 'package:flutter/material.dart';

import '../page/details.dart';

class Cardcostum extends StatelessWidget {
  const Cardcostum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: Container(color: Colors.green,
          height: 100,
          width: 100,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Details(),
                    ));
              },
              child: Column(
                children: [
                  Container(
                    width: 20,
                    color: Colors.blue,
                    height: 20,
                  ),
                  // Image.network(
                  //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
                  //   width: 100,
                  // ),
                  const Text('Penjelasan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('Penjelasan'),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: Container(color: Colors.green,
          height: 100,
          width: 100,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Details(),
                    ));
              },
              child: Column(
                children: [
                  Container(
                    width: 20,
                    color: Colors.blue,
                    height: 20,
                  ),
                  // Image.network(
                  //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
                  //   width: 100,
                  // ),
                  const Text('Penjelasan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text('Penjelasan'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
