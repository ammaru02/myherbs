import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myherbs/home.dart';
import 'package:myherbs/page/notif.dart';

import 'profil.dart';
// import 'package:myherbs/page/home1.dart';

// import 'profil.dart';

// enum Menu {itemOne}

class Profilanda extends StatefulWidget {
  const Profilanda({Key? key}) : super(key: key);

  @override
  State<Profilanda> createState() => _ProfilandaState();
}

class _ProfilandaState extends State<Profilanda> {
    File? image;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }
  
  // String _selectedMenu = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff007251),
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
          // IconButton(icon: const Icon(Icons.more_horiz),
          // onPressed: () {
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PopupMenuButton(
              child: Icon(
                Icons.more_horiz,
                size: 40,
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: const Text("Logout"),
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Profil();
                          },
                        ),
                      );
                    });
                  },
                ),

                // PopupMenuItem(
                //   child: const Text("Notif"),
                //   onTap: () {
                //     WidgetsBinding.instance.addPostFrameCallback((_) {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) {
                //             return NotifAnda();
                //           },
                //         ),
                //       );
                //     });
                //   },
                // ),


              ],
            ),
          ),

          // PopupMenuButton<Menu>(
          //   icon: Icon(Icons.more_vert),
          //   // Callback that sets the selected popup menu item.
          //   onSelected: (Menu item) {
          //     setState(() {
          //       _selectedMenu = item.name;
          //     });
          //   },
          //   itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
          //         PopupMenuItem<Menu>(
          //           value: Menu.itemOne,
          //           child: Text('Log out'),
          //           onTap: () {
          //             WidgetsBinding.instance!.addPostFrameCallback((_) {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) {
          //                 return Profil();
          //               },
          //             ),
          //           );
          //         });
          //           },
          //         ),
          //       ])

          //       floatingActionButton: SizedBox(height: 40,width: 150,
          //   child: FloatingActionButton.extended(
          //     backgroundColor: Colors.green,
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => const Profil(),
          //           ));
          //     },
          //     label: Row(
          //       children: const [
          //         Icon(Icons.add),
          //         Text(
          //           'Tambah Data',
          //           style: TextStyle(fontSize: 15),
          //         ),
          //       ],
          //     ),
          //   ),
          // );
          // },
          // )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15,top: 20, right: 15),
            color: Colors.white,
            height: 160,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                //       Column(
                // children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        // border: Border.all(width: 4, color: Colors.white),
                        // boxShadow: [
                        //   BoxShadow(
                        //       spreadRadius: 2,
                        //       blurRadius: 10,
                        //       color: Colors.black.withOpacity(0.1))
                        // ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://lh3.googleusercontent.com/a/ALm5wu01fSSTRgPKfbmpFWUNj6dEQFPw8FtMroxYlAGh=s432-p-rw-no'))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // border: Border.all(width: 4, color: Colors.white),
                            color: Colors.green,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt_outlined), color: Colors.white,
                            onPressed: () async {
                              await getImage();
                            },
                            ),
                        ),
                      )),
                  // Container(
                  //   margin: const EdgeInsets.only(left: 10, right: 10),
                  //   height: 100,
                  //   width: 100,
                  //   decoration: const BoxDecoration(
                  //     color: Colors.red,
                  //     borderRadius: BorderRadius.all(Radius.circular(100)),
                  //   ),
                  // ),

                  
              //   ],
              // ),
                    ],
                  ),
                )
              ],
            ),
            )
            // Padding(
            //   padding: const EdgeInsets.only(top: 20),
            //   child: 
              
            // ),
          ),
          // SizedBox(
          //           height: 10,
          //         ),
                  const Text(
                    'Muhammad Ammar',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('asep@gmail.com'),
          // Container(
          //   color: Colors.grey[350],
          //   height: 2,
          //   width: MediaQuery.of(context).size.width,
          // ),
          // Container(
          //   padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
          //   margin: const EdgeInsets.only(bottom: 2),
          //   color: Colors.white,
          //   height: 60,
          //   width: MediaQuery.of(context).size.width,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: const [
          //       Text(
          //         'Akun',
          //         style: TextStyle(
          //             fontSize: 15,
          //             fontWeight: FontWeight.bold,
          //             color: Color(0xff007251)),
          //       ),
          //       Text('asep@gmail.com'),
          //     ],
          //   ),
          // ),
          // Container(
          //   color: Colors.grey[350],
          //   height: 2,
          //   width: MediaQuery.of(context).size.width,
          // ),
          // Container(
          //   padding: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
          //   margin: const EdgeInsets.only(bottom: 2),
          //   color: Colors.white,
          //   height: 50,
          //   width: MediaQuery.of(context).size.width,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: const [
          //       Text(
          //         'ammaru02',
          //         style: TextStyle(
          //             fontSize: 15,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black),
          //       ),
          //       Text(
          //         'Username',
          //         style: TextStyle(fontSize: 10),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   color: Colors.grey[350],
          //   height: 2,
          //   width: MediaQuery.of(context).size.width,
          // ),
        ],
      ),
    );
  }
}
