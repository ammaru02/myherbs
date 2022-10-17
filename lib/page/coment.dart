// import 'package:comment_box/comment/comment.dart';
import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myherbs/api/api.dart';
import 'package:myherbs/api/model.dart';
import 'package:myherbs/page/details.dart';

class CommentAnda extends StatefulWidget {
  const CommentAnda({super.key, required this.data});
  final List data;
  // final String comment;

  @override
  State<CommentAnda> createState() => _CommentAndaState();
}

class _CommentAndaState extends State<CommentAnda> {
ApiMyHerbs dataApi = ApiMyHerbs();
// Future getDataApi()async{
//     await dataApi.getAllData();
//   }
  @override
  void initState() {
    super.initState();

    // commentController.text = widget.data.map((e) => e['komen']).toString();
    // dataApi.getAllData();
  }
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  // var komen = widget.data.map((e) => e['komen']).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comment Page"),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: commentController,
            decoration: InputDecoration(
              hintText: 'comment',
              suffixIcon: IconButton(
                onPressed: () {
                  var api = ApiMyHerbs();
                  var isikomen = widget.data.first['komen'];
                  var komen = widget.data;
                  komen = [{isikomen:commentController.text},...komen as List];
                  api.createKomen(
                    komen
                  );
                  log(komen.toString());
                },
                icon: const Icon(Icons.send),
                
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.data.isNotEmpty)
                  // ListView.builder(
                    // shrinkWrap: true,
                    // itemCount: dataApi.listMyHerbs.length,
                    // itemBuilder: (context, index) {
                      // var data = widget.data[index];
                      // return CustomKomen(
                      //   user: data['user'],
                      //   komen: data['komentar'],
                      // );
                    // },
                  // ),
                ...widget.data.map(
                  (e) {
                    log("data komen : ${e.toString()}");
                    return CustomKomen(
                      user: e['user'],
                      komen: e['komen'],
                    );
                  },
                ).toList(),
                if (widget.data.isEmpty) const Text('komentar masih kosong'),
              ],
            ),
          )
          ),
    );
  }
}

class CustomKomen extends StatelessWidget {
  const CustomKomen({
    Key? key,
    required this.user,
    required this.komen,
  }) : super(key: key);

  final String user;
  final String komen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
      child: ListTile(
        
        title: Text(
          user,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(komen),
      ),
    );
  }
}
