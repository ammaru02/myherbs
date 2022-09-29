import 'package:flutter/material.dart';

import '../page/details.dart';

class Cardcostum extends StatelessWidget {
  const Cardcostum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Card(
          margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 10),
          elevation: 5,
          shadowColor: Colors.black38,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            // padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
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
                        borderRadius: BorderRadius.all(Radius.circular(15))),
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
        );

        
        // Card(
        //   child: Container(
        //     color: Colors.white,
        //     height: 140,
        //     width: 100,
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => const Details(),
        //             ));
        //       },
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             decoration: const BoxDecoration(
        //             color: Colors.blue,
        //               borderRadius: BorderRadius.all(Radius.circular(15))
        //             ),
        //             width: MediaQuery.of(context).size.width,
        //             height: 100,
        //           ),
        //           // Image.network(
        //           //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
        //           //   width: 100,
        //           // ),
        //           Column(
        //             children: const [
        //               Text('Penjelasan',
        //                   style: TextStyle(fontWeight: FontWeight.bold)),
        //               Text('Penjelasan'),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      
  }
}
