import 'package:flutter/material.dart';
import 'package:myherbs/card/cardcategori.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
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
      ),
      body: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        child: DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return CustomScrollView(
              slivers: <Widget>[
                const SliverAppBar(
                  backgroundColor: Colors.white,
                  pinned: true,
                  expandedHeight: 50,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black)),
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 900.0,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 5.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Column(
                        children: const [
                          CardCategori(),
                        ],
                      );
                    },
                    childCount: 50,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
