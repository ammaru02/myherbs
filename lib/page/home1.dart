import 'package:flutter/material.dart';
import 'package:myherbs/card/card.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
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
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        child: DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  pinned: true,
                  expandedHeight: 10,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Column(
                      children: const [
                        Text('Find Your',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black)),
                        Text('Herbal Medecine!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 10)),
                      ],
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 900,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 3.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Column(
                        children: const [
                          Cardcostum(),
                        ],
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ],
            );
          },
        ),
        //   Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(left: 30),
        //         child: SizedBox(
        //           height: 50,
        //           width: double.infinity,
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: const [
        //               Text('Find Your',
        //                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        //               Text('Herbal Medecine!',
        //                   style: TextStyle(fontWeight: FontWeight.bold)),
        //             ],
        //           ),
        //         ),
        //       ),
        //       const Cardcostum(),
        //       const Cardcostum(),
        //       const Cardcostum(),
        //       const Cardcostum(),
        //     ],
      ),
    );
  }
}
