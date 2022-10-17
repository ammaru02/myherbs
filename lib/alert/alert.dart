import 'package:flutter/material.dart';

import '../page/profil.dart';

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(height: 30,width: 100,
        child: TextButton(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green, ),
                  child: Center(child: Text("Yes", style: TextStyle(color: Colors.white),)),
                  
                  ),
              ],
            ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profil(),
                ));
          },
        ),
      ),
    ],
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Icon(Icons.check_circle,color: Colors.green,size: 40,),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Behasil membuat akun"),
      ],
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
