// import 'package:flutter/material.dart';
// import 'package:myherbs/home.dart';

// import 'profil.dart';
// // import 'package:myherbs/page/home1.dart';

// // import 'profil.dart';

// // enum Menu {itemOne}

// class NotifAnda extends StatefulWidget {
//   const NotifAnda({Key? key}) : super(key: key);

//   @override
//   State<NotifAnda> createState() => _NotifAndaState();
// }

// class _NotifAndaState extends State<NotifAnda> {
//   // String _selectedMenu = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: const Color(0xff007251),
//         shadowColor: Colors.transparent,
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: const Icon(
//                 Icons.arrow_back_rounded,
//                 color: Colors.black,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const Homepage(),
//                     ));
//               },
//               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//             );
//           },
//         ),
//         actions: [
//           // IconButton(icon: const Icon(Icons.more_horiz),
//           // onPressed: () {

//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: PopupMenuButton(
//               child: Icon(Icons.more_horiz,size: 40,),
//               shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(15.0))),
//               itemBuilder: (context) => [
//                 PopupMenuItem(
//                   child: Text("Logout"),
//                   onTap: () {
//                     WidgetsBinding.instance.addPostFrameCallback((_) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return Profil();
//                           },
//                         ),
//                       );
//                     });
//                   },
//                 ),
//                 PopupMenuItem(
//                   child: Text("Notif"),
//                   onTap: () {
//                     WidgetsBinding.instance.addPostFrameCallback((_) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return Profil();
//                           },
//                         ),
//                       );
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),

//           // PopupMenuButton<Menu>(
//           //   icon: Icon(Icons.more_vert),
//           //   // Callback that sets the selected popup menu item.
//           //   onSelected: (Menu item) {
//           //     setState(() {
//           //       _selectedMenu = item.name;
//           //     });
//           //   },
//           //   itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
//           //         PopupMenuItem<Menu>(
//           //           value: Menu.itemOne,
//           //           child: Text('Log out'),
//           //           onTap: () {
//           //             WidgetsBinding.instance!.addPostFrameCallback((_) {
//           //           Navigator.push(
//           //             context,
//           //             MaterialPageRoute(
//           //               builder: (context) {
//           //                 return Profil();
//           //               },
//           //             ),
//           //           );
//           //         });
//           //           },
//           //         ),
//           //       ])

//           //       floatingActionButton: SizedBox(height: 40,width: 150,
//           //   child: FloatingActionButton.extended(
//           //     backgroundColor: Colors.green,
//           //     onPressed: () {
//           //       Navigator.push(
//           //           context,
//           //           MaterialPageRoute(
//           //             builder: (context) => const Profil(),
//           //           ));
//           //     },
//           //     label: Row(
//           //       children: const [
//           //         Icon(Icons.add),
//           //         Text(
//           //           'Tambah Data',
//           //           style: TextStyle(fontSize: 15),
//           //         ),
//           //       ],
//           //     ),
//           //   ),
//           // );
//           // },
//           // )
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.white,
//             height: 200,
//             width: MediaQuery.of(context).size.width,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Column(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(left: 10, right: 10),
//                     height: 100,
//                     width: 100,
//                     decoration: const BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.all(Radius.circular(100)),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   const Text(
//                     'Muhammad Ammar',
//                     style: TextStyle(fontSize: 20),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 10,),
//                   Text('asep@gmail.com'),
//                 ],
//               ),
//             ),
//           ),
//           // Container(
//           //   color: Colors.grey[350],
//           //   height: 2,
//           //   width: MediaQuery.of(context).size.width,
//           // ),
//           // Container(
//           //   padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
//           //   margin: const EdgeInsets.only(bottom: 2),
//           //   color: Colors.white,
//           //   height: 60,
//           //   width: MediaQuery.of(context).size.width,
//           //   child: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.start,
//           //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //     children: const [
//           //       Text(
//           //         'Akun',
//           //         style: TextStyle(
//           //             fontSize: 15,
//           //             fontWeight: FontWeight.bold,
//           //             color: Color(0xff007251)),
//           //       ),
//           //       Text('asep@gmail.com'),
//           //     ],
//           //   ),
//           // ),
//           // Container(
//           //   color: Colors.grey[350],
//           //   height: 2,
//           //   width: MediaQuery.of(context).size.width,
//           // ),
//           // Container(
//           //   padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
//           //   margin: const EdgeInsets.only(bottom: 2),
//           //   color: Colors.white,
//           //   height: 50,
//           //   width: MediaQuery.of(context).size.width,
//           //   child: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.start,
//           //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //     children: const [
//           //       Text(
//           //         'ammaru02',
//           //         style: TextStyle(
//           //             fontSize: 15,
//           //             fontWeight: FontWeight.bold,
//           //             color: Colors.black),
//           //       ),
//           //       Text(
//           //         'Username',
//           //         style: TextStyle(fontSize: 10),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Container(
//           //   color: Colors.grey[350],
//           //   height: 2,
//           //   width: MediaQuery.of(context).size.width,
//           // ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class NotifAnda extends StatefulWidget {
  @override
  _NotifAndaState createState() => _NotifAndaState();
}

class _NotifAndaState extends State<NotifAnda> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Adeleye Ayodeji',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifikasi"),
        backgroundColor: Colors.green,
      ),
      body: commentChild(filedata)
      // Container(
      //   child: CommentBox(s
      //     userImage:
      //         "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
      //     child: commentChild(filedata),
      //     labelText: 'Write a comment...',
      //     withBorder: false,
      //     errorText: 'Comment cannot be blank',
      //     sendButtonMethod: () {
      //       if (formKey.currentState!.validate()) {
      //         print(commentController.text);
      //         setState(() {
      //           var value = {
      //             'name': 'New User',
      //             'pic':
      //                 'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
      //             'message': commentController.text
      //           };
      //           filedata.insert(0, value);
      //         });
      //         commentController.clear();
      //         FocusScope.of(context).unfocus();
      //       } else {
      //         print("Not validated");
      //       }
      //     },
      //     formKey: formKey,
      //     commentController: commentController,
      //     backgroundColor: Colors.black,
      //     textColor: Colors.white,
      //     sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
      //   ),
      // ),
    );
  }
}