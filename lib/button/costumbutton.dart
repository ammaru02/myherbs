import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final dynamic button;
  final dynamic onpress;
  final dynamic warna;
  final dynamic warna1;
  const ButtonCustom({Key? key, required this.button,required this.onpress,required this.warna,required this.warna1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(top: 5,right: 40,left: 40,bottom: 10),
            decoration: BoxDecoration(
              color: warna,
                borderRadius: const BorderRadius.only(
                  bottomLeft:  Radius.circular(15.0),
                  topRight:  Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0))),
      
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: TextButton(

  style: TextButton.styleFrom(
    primary: warna1,
  ),
  onPressed: onpress,
  child: Text('$button'),
)

    );
  }
}


