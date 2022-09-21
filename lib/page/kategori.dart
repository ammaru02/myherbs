import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kategori')),
      body: const Center(child: Text('kategori screen',style: TextStyle(fontSize: 40),)),
    );
  }
}