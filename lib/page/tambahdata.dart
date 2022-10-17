import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:myherbs/button/costumbutton.dart';
// import 'package:myherbs/page/profil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myherbs/api/model.dart';
// import 'package:myherbs/page/upload.dart';

class TambahData extends StatefulWidget {
  final Herbal? updateData;
  const TambahData({Key? key, this.updateData}) : super(key: key);

  @override
  State<TambahData> createState() => _TambahDataState();
}

class _TambahDataState extends State<TambahData> {

  TextEditingController nametanaman = TextEditingController();
  TextEditingController namelatin = TextEditingController();
  TextEditingController khasiat = TextEditingController();
  TextEditingController pengolahan = TextEditingController();
  TextEditingController deskripsi = TextEditingController();


  File? image;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    log(widget.updateData?.id.toString() ?? 'kosong');
    if (widget.updateData != null) {
      nametanaman.text = widget.updateData!.namaTanaman;
      namelatin.text = widget.updateData!.namaLatin;
      pengolahan.text = widget.updateData!.pengolahan;
      deskripsi.text = widget.updateData!.deskripsi;
    }
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
                  Navigator.of(context).pop(true);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: SizedBox(
              width: 40, height: 40,
              child: Image.asset("assets/logo.png")),
          ),
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Form Input Obat Herbal',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(color: Colors.grey, height: 2,)
                ],
              ),
              const SizedBox(height: 20,),
              Input(judul: 'Nama Tanaman', controller: namelatin,),
              Input(judul: 'Nama Latin', controller: namelatin,),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10, right: 40, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Gambar'),
                    image != null
                        ? Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ))
                        : Container(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: TextButton(
                          onPressed: () async {
                            await getImage();
                          },
                          child: const Text(
                            'Tambahkan File',
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                ),
              ),
              Input(judul: 'Khasiat', controller: khasiat,),
              Input(judul: 'Pengolahan', controller: pengolahan,),
              Input(judul: 'Deskripsi', controller: deskripsi,)
        
              // Container(
              //   margin: const EdgeInsets.only(
              //       top: 5, bottom: 20, right: 40, left: 40),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: const [
              //       Text('Nama Latin'),
              //       TextField(
              //         scrollPadding: EdgeInsets.all(40),
              //         decoration: InputDecoration(
              //           contentPadding: EdgeInsets.symmetric(vertical: 50),
              //           enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Colors.black),
              //             borderRadius: BorderRadius.all(
              //               Radius.circular(15),
              //             ),
              //           ),
              //           border: OutlineInputBorder(),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
        
        
              // Container(
              //   margin: const EdgeInsets.only(
              //       top: 5, bottom: 20, right: 40, left: 40),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: const [
              //       Text('Deskripsi'),
              //       TextField(
              //         scrollPadding: EdgeInsets.all(40),
              //         decoration: InputDecoration(
              //           contentPadding: EdgeInsets.only(bottom: 50),
              //           enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Colors.black),
              //             borderRadius: BorderRadius.all(
              //               Radius.circular(15),
              //             ),
              //           ),
              //           border: OutlineInputBorder(),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
        
              // Container(
              //   margin: const EdgeInsets.only(
              //       top: 5, bottom: 10, right: 40, left: 40),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       const Text('Deskripsi'),
              //       TextField(
              //         obscureText: _isObscure,
              //         scrollPadding: EdgeInsets.all(40),
              //         decoration: InputDecoration(
              //           contentPadding: EdgeInsets.symmetric(vertical: 50),
              //           enabledBorder: const OutlineInputBorder(
              //             borderSide: BorderSide(color: Colors.black),
              //             borderRadius: BorderRadius.all(
              //               Radius.circular(15),
              //             ),
              //           ),
              //           //
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton.extended(
          backgroundColor: const Color(0xff007251),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TambahData(),
                ));
          },
          label: Row(
            children: const [
              Icon(Icons.save, size: 40,),
            ],
          ),
      ),
        ),
        );
  }
}

class Input extends StatelessWidget {
  final String judul;
  final TextEditingController controller;
  const Input({super.key, required this.judul, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.only(
                  bottom: 10, right: 40, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(judul),
                    TextField(
                      controller: controller,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      scrollPadding: const EdgeInsets.all(40),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              );
  }
}