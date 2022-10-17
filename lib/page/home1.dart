import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myherbs/api/api.dart';
import 'package:myherbs/api/model.dart';
import 'package:myherbs/card/card.dart';
import 'package:myherbs/page/details.dart';

class Home1 extends StatefulWidget {
  const Home1({
    Key? key,
  }) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");

  ApiMyHerbs dataApi = ApiMyHerbs();

  List<Herbal>? _userModel = [];

  List dataSearch = [];

  @override
  void initState() {
    super.initState();
    _getData();
    // dataApi.getAllData();
    dataSearch.addAll(_userModel!);
    log(dataSearch.toString());
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SizedBox(
                width: 40, height: 40, child: Image.asset("assets/logo.png")),
          ),
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 200,
          //   child: ListView.builder(
          //     itemCount: _userModel!.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text(_userModel![index].namaLatin),
          //       );
          //     },
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 10),
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Find Your',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Herbal Medecine!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                onChanged: (String value) {
                  searchName(value);
                },
                controller: editingController,
                decoration: const InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
          ),
          FutureBuilder(
            future: _getData(), // a previously-obtained Future<String> or null
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        // mainAxisSpacing: 40,
                      ),
                      shrinkWrap: true,
                      itemCount: dataSearch.length,
                      itemBuilder: (context, index) {
                        var data = dataSearch[index];
                        var image = 'http://192.168.1.18/static/';
                        log(data.toString() + 'data');
                        return Cardcostum(
                          widget: Details(model: data),
                          foto: '$image${data.gambar}',
                          penjelasan1: data.namaTanaman,
                          penjelasan2: data.namaLatin,
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
    );
  }

//fungsi ini akan mencari nama sesuai yang diketikkan
  searchName(String name) {
    if (name.isNotEmpty) {
      setState(() {
        dataSearch.clear();
        //melakukan perulangan/looping
        for (var item in _userModel!) {
          if (item.namaTanaman.toLowerCase().contains(name.toLowerCase()) ||
              item.namaLatin.toLowerCase().contains(name.toLowerCase())||
              item.deskripsi.toLowerCase().contains(name.toLowerCase())||
              item.khasiat.toLowerCase().contains(name.toLowerCase())) {
            dataSearch.add(item);
          }
        }
      });
    } else {
      setState(() {
        dataSearch.clear();
        dataSearch.addAll(_userModel!);
      });
    }
  }
}
