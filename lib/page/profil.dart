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

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // void validate(){
  //   if(formkey.currentState!.validate()){
  //     print("validated");
  //   }else{
  //     print("Not Validated");
  //   }
  // }

  // String? validatepass(value){
  //                       if(value!.isEmpty){
  //                           return "Required";
  //                       }else{
  //                         return null;
  //                       }
  // }

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
        //   actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15),
        //     child: SizedBox(
        //       width: 40, height: 40,
        //       child: Image.asset("assets/logo.png")),
        //   ),
        // ],
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.always, key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 20, top: 10),
              //   child: SizedBox(width: 150, height: 150,
              //     child: Image.asset("assets/logo.png")),
              // ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('LOGIN',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(
                    top: 5, bottom: 20, right: 40, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('E-mail', style:
                    //             TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                      scrollPadding: EdgeInsets.all(40),
                      decoration: InputDecoration(
                        hintText: 'Enter email',
                      //   enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.black),
                          // borderRadius: BorderRadius.all(
                          //   Radius.circular(15),
                          // ),
                      //   ),
                      //   border: OutlineInputBorder(),
                      ),
                      // validator: ,
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
                    //             TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                      obscureText: _isObscure,
                      scrollPadding: const EdgeInsets.all(40),
                      decoration: InputDecoration(
                        hintText: 'Enter password',
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
                      // validator: validatepass,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              ButtonCustom(
                warna: Color(0xff4EA32A),
                warna1: Color(0xffFFFFFF),
                button: "Login",
                onpress: 
                // validate,
                () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder){
                    return const Homepage();
                  }));
                  
            //       final snackBar = SnackBar(
            //         duration: Duration(seconds: 900),
            //   content: SizedBox(height: 200,
            //     child: const Text('Yay! A SnackBar!')),
            //   action: SnackBarAction(
            //     label: 'Undo',
            //     onPressed: () {
            //       // Some code to undo the change.
            //     },
            //   ),
            // );

            // // Find the ScaffoldMessenger in the widget tree
            // // and use it to show a SnackBar.
            // // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //       builder: (context) => const Homepage(),
            //       //     ));
                },
              ),
              ButtonCustom(
                warna: Color(0xffA1A1A1),
                warna1: Color(0xff797979),
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
          ),
        ));
  }
}
