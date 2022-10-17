import 'package:flutter/material.dart';
import 'package:myherbs/page/detailsupload.dart';

class CardUpload extends StatelessWidget {
  final String fotoupload;
  final String penjelasanupload1;
  final String penjelasanupload2;
  final Widget widget;
  const CardUpload(
      {Key? key,
      required this.fotoupload,
      required this.penjelasanupload1,
      required this.penjelasanupload2, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(right: 30, left: 30, bottom: 10),
        elevation: 10,
        shadowColor: Colors.black,
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(fotoupload),
                      ),
                    ),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(penjelasanupload1,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(penjelasanupload2),
                    ],
                  ),
                ],
              ),
              // Image.network(
              //   'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
              //   width: 100,
              // ),

              const Icon(Icons.chevron_right_sharp)
            ],
          ),
        ),
      ),
    );
  }
}
