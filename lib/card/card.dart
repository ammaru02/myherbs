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
          child: Container(
            color: Colors.white,
            height: 140,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                    color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  ),
                  // Image.network(
                  //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
                  //   width: 100,
                  // ),
                  Column(
                    children: const [
                      Text('Penjelasan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Penjelasan'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: Container(
            color: Colors.white,
            height: 140,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                    color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  ),
                  // Image.network(
                  //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
                  //   width: 100,
                  // ),
                  Column(
                    children: const [
                      Text('Penjelasan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Penjelasan'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
