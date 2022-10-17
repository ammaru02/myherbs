import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myherbs/alert/alert.dart';
import 'package:myherbs/button/costumbutton.dart';
// import 'package:myherbs/home.dart';
import 'package:myherbs/page/profil.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_form_field/image_form_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
late String _name,_email;
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // File? image;
  // Future getImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? imagePicked =
  //       await _picker.pickImage(source: ImageSource.gallery);
  //   image = File(imagePicked!.path);
  //   setState(() {});
  // }


  bool _isObscure = true;
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
                        builder: (context) => const Profil(),
                      ));
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        //   actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15),
        //     child: SizedBox(
        //       width: 40, height: 40,
        //       child: Image.asset("assets/logo.png")),
        //   ),
        // ],
        ),
        body: Container(
          key: _formkey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('REGISTER',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 20, right: 40, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      // Text('Nama Lengkap', style:
                      //         TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          scrollPadding: EdgeInsets.all(40),
                          decoration: InputDecoration(
                            hintText: 'Masukkan nama lengkap',
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.black),
                            //   borderRadius: BorderRadius.all(
                            //     Radius.circular(15),
                            //   ),
                            // ),
                            // border: OutlineInputBorder(),
                          ),
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return "Mohon Masukkan Nama Anda";
                            }
                            return null;
                          },
                          onSaved: (String? name) {
                            _name = name!;
                          } ,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 20, right: 40, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      // Text('E-mail', style:
                      //         TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          scrollPadding: EdgeInsets.all(40),
                          decoration: InputDecoration(
                            hintText: 'Masukkan email',
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.black),
                            //   borderRadius: BorderRadius.all(
                            //     Radius.circular(15),
                            //   ),
                            // ),
                            // border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(
                //       top: 5, bottom: 20, right: 40, left: 40),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: const [
                //       // Text('Username', style:
                //       //         TextStyle(fontWeight: FontWeight.bold)),
                //       SizedBox(
                //         height: 50,
                //         child: TextField(
                //           scrollPadding: EdgeInsets.all(40),
                //           decoration: InputDecoration(
                //             hintText: 'Masukkan username',
                //             // enabledBorder: OutlineInputBorder(
                //             //   borderSide: BorderSide(color: Colors.black),
                //             //   borderRadius: BorderRadius.all(
                //             //     Radius.circular(15),
                //             //   ),
                //             // ),
                //             // border: OutlineInputBorder(),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 10, right: 40, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const Text('Password', style:
                      //         TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          obscureText: _isObscure,
                          scrollPadding: EdgeInsets.all(40),
                          decoration: InputDecoration(
                            hintText: 'Masukkan password',
                            // enabledBorder: const OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.black),
                            //   borderRadius: BorderRadius.all(
                            //     Radius.circular(15),
                            //   ),
                            // ),
                            // border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility, color: Colors.black,),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 10, right: 40, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const Text('Password', style:
                      //         TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          obscureText: _isObscure,
                          scrollPadding: EdgeInsets.all(40),
                          decoration: InputDecoration(
                            hintText: 'Konfirmasi password',
                            // enabledBorder: const OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.black),
                            //   borderRadius: BorderRadius.all(
                            //     Radius.circular(15),
                            //   ),
                            // ),
                            // border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility, color: Colors.black,),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //     margin: const EdgeInsets.only(
                //       bottom: 10, right: 40, left: 40),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         const Text('Foto', style:
                //               TextStyle(fontWeight: FontWeight.bold)),
                //         image != null
                //             ? Container(
                //                 height: 200,
                //                 width: MediaQuery.of(context).size.width,
                //                 child: Image.file(
                //                   image!,
                //                   fit: BoxFit.cover,
                //                 ))
                //             : Container(),
                //         Container(
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(5),
                //               border: Border.all(color: Colors.black)),
                //           child: SizedBox(height: 50,
                //             child: TextButton(
                //                 onPressed: () async {
                //                   await getImage();
                //                 },
                //                 child: const Text(
                //                   'Tambahkan File',
                //                   style: TextStyle(color: Colors.black),
                //                 )),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                ButtonCustom(
                  warna: const Color(0xff4EA32A),
                  warna1: const Color(0xffFFFFFF),
                  button: "Register",
                  onpress: () {
                    showAlertDialog(context);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const Profil(),
                    //     ));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
