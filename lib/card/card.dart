import 'package:flutter/material.dart';
import 'package:myherbs/api/model.dart';

import '../page/details.dart';

class Cardcostum extends StatelessWidget {
  final String foto;
  final String penjelasan1;
  final String penjelasan2;
  const Cardcostum({
    Key? key,
    required this.foto,
    required this.penjelasan1,
    required this.penjelasan2,
    required this.widget,
  }) : super(key: key);
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 10),
      elevation: 1,
      shadowColor: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: 10,
        // padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget,
                ));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: Image.network(foto),
              //         fit: BoxFit.fill,
              //       ),
              //       borderRadius: const BorderRadius.all(Radius.circular(15))),
              //   width: MediaQuery.of(context).size.width,
              //   height: 150,
              // ),
              SizedBox(
                height: 150,
                width: 100,
                child: Image.network(
                  foto,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Text(penjelasan1,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(penjelasan2),
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
