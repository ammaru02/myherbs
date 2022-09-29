import 'package:flutter/material.dart';
import 'package:myherbs/card/cardupload.dart';
// import 'package:myherbs/page/profile1.dart';
// import 'package:myherbs/page/register.dart';
import 'package:myherbs/page/tambahdata.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
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
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
          Container(
            padding: const EdgeInsets.only(left: 30, top: 10),
              width: MediaQuery.of(context).size.width,height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Upload',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              )),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return  const CardUpload();
                  },
                  ),
            )
          ],
        ),),
        floatingActionButton: FloatingActionButton.extended(
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
              style: TextStyle(fontSize: 20),
            ),
          ],
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
