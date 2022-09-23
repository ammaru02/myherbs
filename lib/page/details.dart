import 'package:flutter/material.dart';
import 'package:myherbs/home.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
              onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homepage(),
              ));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 12, top: 20),
              child: Text(
                'MyHerbs',
                style: TextStyle(color: Colors.green),
              )),
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
                Text('Dibagikan pada 1 Mei 2022'),
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
              children: const[
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
    );
  }
}
