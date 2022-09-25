import 'package:flutter/material.dart';

import '../page/details.dart';

class CardCategori extends StatelessWidget {
  const CardCategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
      elevation: 10,
      shadowColor: Colors.black,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Details(),
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    color: Colors.blue,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('Penjelasan',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Penjelasan'),
                    ],
                  ),
                ],
              ),
              // Image.network(
              //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
              //   width: 100,
              // ),

              const Icon(Icons.chevron_right_sharp)
            ],
          ),
        ),
      ),
    );
  }
}
