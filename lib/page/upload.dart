import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myherbs/card/cardupload.dart';
import 'package:myherbs/home.dart';
import 'package:myherbs/api/api.dart';
// import 'package:myherbs/page/profile1.dart';
// import 'package:myherbs/page/register.dart';
import 'package:myherbs/page/tambahdata.dart';

import '../api/model.dart';
import 'details.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  ApiMyHerbs dataApi = ApiMyHerbs();

  late List<Herbal>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

 Future<List<Herbal>> _getData() async {
    _userModel = await ApiMyHerbs().getAllData();

    // setState(() {
      
    // });
    // Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
    return _userModel!;
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
                width: 40, height: 40, child: Image.asset("assets/logo.png")),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, top: 10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Riwayat Upload',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            FutureBuilder(
              future: _getData(), // a previously-obtained Future<String> or null
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        shrinkWrap: true,
                        itemCount: _userModel!.length,
                        itemBuilder: (context, index) {
                          var data = _userModel![index];
                          log(data.toString() + 'data');
                          return CardUpload(
                            widget: Details(model: data),
                            fotoupload: data.gambar,
                            penjelasanupload1: data.namaTanaman,
                            penjelasanupload2: data.namaLatin,
                          );
                        },
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else {
                  return const SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 40,
        width: 150,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TambahData(),
                ));
          },
          label: Row(
            children: const [
              Icon(Icons.add),
              Text(
                'Tambah Data',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );

    // DraggableScrollableSheet(
    //     expand: false,
    //     builder: (BuildContext context, ScrollController scrollController) {
    //       return ListView.builder(controller: scrollController,itemCount: 25,itemBuilder: (BuildContext context,int index) {
    //           return CardCategori();
    //         });
    //     },
    //   )
    // );

    // CustomScrollView(
    //   slivers: <Widget>[
    //     const SliverAppBar(
    //       backgroundColor: Colors.white,
    //       pinned: true,
    //       expandedHeight: 50,
    //       flexibleSpace: FlexibleSpaceBar(
    //         title: Text('Categories',
    //             style: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 20,
    //                 color: Colors.black)),
    //       ),
    //     ),
    //     SliverGrid(
    //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //         maxCrossAxisExtent: 900.0,
    //         mainAxisSpacing: 0.0,
    //         crossAxisSpacing: 0.0,
    //         childAspectRatio: 5.0,
    //       ),
    //       delegate: SliverChildBuilderDelegate(
    //         (BuildContext context, int index) {
    //           return Column(
    //             children: const [
    //               CardCategori(),
    //             ],
    //           );
    //         },
    //         childCount: 50,
    //       ),
    //     ),
    //   ],
    // );

    //       },
    //     ),
    //   ),
    // );
  }
}
