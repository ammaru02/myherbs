import 'package:flutter/material.dart';
import 'package:myherbs/home.dart';
// import 'package:myherbs/page/tambahdata.dart';
import 'package:myherbs/page/updatedata.dart';
import 'package:myherbs/page/upload.dart';

import '../alert/alert.dart';

class DetailsUpload extends StatefulWidget {
  const DetailsUpload({Key? key}) : super(key: key);

  @override
  State<DetailsUpload> createState() => _DetailsUploadState();
}

class _DetailsUploadState extends State<DetailsUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SizedBox(
              width: 40, height: 40,
              child: Image.asset("assets/logo.png")),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[350],
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: const Text(
              'GAMBAR',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, bottom: 20, top: 10),
            margin: const EdgeInsets.only(bottom: 2),
            color: Colors.white,
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Detail',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            padding: const EdgeInsets.only(left: 30, top: 10),
            margin: const EdgeInsets.only(bottom: 2),
            color: Colors.white,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: const Text('Detail Herbal Medicine',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Container(
            color: Colors.grey[350],
            height: 2,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Descriiption',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text('lorem',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     SizedBox(
      //       height: 40,
      //       width: 40,
      //       child: FloatingActionButton.extended(
      //         backgroundColor: const Color(0xff007251),
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const UpdateData(),
      //               ));
      //         },
      //         label: Row(
      //           children: const [
      //             Icon(
      //               Icons.update,
      //               size: 20,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       width: 5,
      //     ),
      //     SizedBox(
      //       height: 40,
      //       width: 40,
      //       child: FloatingActionButton.extended(
      //         backgroundColor: const Color(0xff007251),
      //         onPressed: () {
      //           showAlert(context, onpressedok: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => const Upload(),
      //                 ));
      //           }, onpressedno: () {
      //             Navigator.pop(context);
      //           });
      //         },
      //         label: Row(
      //           children: const [
      //             Icon(
      //               Icons.delete,
      //               size: 20,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
