import 'package:flutter/material.dart';
import 'package:myherbs/button/costumbutton.dart';
import 'package:myherbs/home.dart';
import 'package:myherbs/page/register.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          // leading: Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: const Icon(
          //         Icons.arrow_back_rounded,
          //         color: Colors.black,
          //       ),
          //       onPressed: () {
          //         Scaffold.of(context).openDrawer();
          //       },
          //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          //     );
          //   },
          // ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 12, top: 20),
                child: Text(
                  'MyHerbs',
                  style: TextStyle(color: Colors.green),
                )),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('LOGIN',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 5, bottom: 20, right: 40, left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('E-mail'),
                  TextField(
                    scrollPadding: EdgeInsets.all(40),
                    decoration: InputDecoration(
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
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 5, bottom: 10, right: 40, left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Password'),
                  TextField(
                    obscureText: _isObscure,
                    scrollPadding: const EdgeInsets.all(40),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
            ButtonCustom(
              warna: Colors.green,
              warna1: Colors.white,
              button: "Login",
              onpress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ));
              },
            ),
            ButtonCustom(
              warna: Colors.grey,
              warna1: Colors.grey[800],
              button: "Register",
              onpress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Register(),
                    ));
              },
            ),
          ],
        ));
  }
}
