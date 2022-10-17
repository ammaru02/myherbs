import 'dart:developer';
import 'package:like_button/like_button.dart';
import 'package:flutter/material.dart';
import 'package:myherbs/api/model.dart';
import 'package:myherbs/home.dart';

import 'coment.dart';

// import '../api/api.dart';

class Details extends StatefulWidget {
  final Herbal model;
  // final Myherbs ditailsData;
  const Details({Key? key, required this.model}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var image = 'http://192.168.1.18/static/';
  @override
  void initState() {
    super.initState();
  }

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
                  ),
                );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SizedBox(
                width: 40, height: 40, child: Image.asset("assets/logo.png")),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              // Column(
              //   children: [
              //     dataDetails('', '', ''),
              //   ],
              // )

              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.grey[350],
                // height: 100,
                // width: MediaQuery.of(context).size.width,
                // child: Image.network(
                //   '',
                //   fit: BoxFit.fill,
                // )
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      '$image${widget.model.gambar}',
                    ),
                  ),
                ),
                height: 150,
                width: double.infinity,
                // child: Image.network(
                //   '$image${widget.model.gambar}',
                //   fit: BoxFit.cover,
                // ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, bottom: 20, top: 10),
                margin: const EdgeInsets.only(bottom: 2),
                color: Colors.white,
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.model.namaTanaman,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.model.namaLatin,
                              style: const TextStyle(
                                  fontSize: 15, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // RatingBar.builder(itemSize: 20,
                        // // glowColor: Colors.white,
                        // unratedColor: Colors.grey[300],
                        //     initialRating: 0,
                        //     minRating: 0,
                        //     direction: Axis.horizontal,
                        //     allowHalfRating: true,
                        //     itemCount: 5,
                        //     itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        //     itemBuilder: (context, _) => const Icon(
                        //       Icons.star,
                        //       color: Colors.amber,
                        //     ),
                        //     onRatingUpdate: (rating) {
                        //       print(rating);
                        //     },
                        //   ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Dibuat Oleh Ammar',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Pada Tanggal 9 oktober 2022',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.comment,
                                    ),
                                    iconSize: 20,
                                    color: Colors.black,
                                    splashColor: Colors.green,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (builder) {
                                            return CommentAnda(
                                              data: widget.model.komen,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  // const LikeButton(
                                  //   size: 20,
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
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
                child: const Text('Detail Obat Herbal',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                color: Colors.grey[350],
                height: 2,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Text('Description',
                        //     style: TextStyle(
                        //         fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Pengertian',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            widget.model.deskripsi,
                            style: const TextStyle(fontSize: 10),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Khasiat',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            widget.model.khasiat,
                            style: const TextStyle(fontSize: 10),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Pengolahan',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            widget.model.pengolahan,
                            style: const TextStyle(fontSize: 10),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget dataDetails(
  //   String judul,
  //   String image,
  //   String details,
  // ) {
  //   return Column(
  //           children: [
  //             SizedBox(
  //               // color: Colors.grey[350],
  //               height: 100,
  //               width: MediaQuery.of(context).size.width,
  //               child: Image.asset(image,fit: BoxFit.fill,)
  //             ),
  //             Container(
  //               padding: const EdgeInsets.only(left: 30, bottom: 20, top: 10),
  //               margin: const EdgeInsets.only(bottom: 2),
  //               color: Colors.white,
  //               height: 100,
  //               width: MediaQuery.of(context).size.width,
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: const [
  //                   Text(
  //                     'Detail',
  //                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Container(
  //               color: Colors.grey[350],
  //               height: 2,
  //               width: MediaQuery.of(context).size.width,
  //             ),
  //             Container(
  //               padding: const EdgeInsets.only(left: 30, top: 10),
  //               margin: const EdgeInsets.only(bottom: 2),
  //               color: Colors.white,
  //               height: 50,
  //               width: MediaQuery.of(context).size.width,
  //               child: const Text('Detail Herbal Medicine',
  //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  //             ),
  //             Container(
  //               color: Colors.grey[350],
  //               height: 2,
  //               width: MediaQuery.of(context).size.width,
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   const Text('Descriiption',
  //                       style:
  //                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  //                   const SizedBox(
  //                     height: 10,
  //                   ),
  //                   Text(judul,
  //                       style:
  //                           const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
  //                   const SizedBox(
  //                     height: 10,
  //                   ),
  //                   Text(
  //                     details,
  //                     style: const TextStyle(fontSize: 10),
  //                     textAlign: TextAlign.justify,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         );
  // }
}
