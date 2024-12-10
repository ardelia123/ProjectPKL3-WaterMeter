import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login_screen.dart';
import '../login/resetpass_screen.dart';
import '../page/activation_screen.dart';
import '../page/list_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
           margin: EdgeInsets.only(top: 60),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 10, right: 85),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Color.fromRGBO(28, 101, 140, 1),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => ActivationScreen()));
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10, right: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Profile',
                          style: GoogleFonts.poppins(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(28, 101, 140, 1)),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15), 
                    child: GestureDetector(
                             child: Text(
                             'Keluar',
                              style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(187, 38, 30, 1)),
                        ),
                        onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                      },
                        ),
                  ), 
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 12, top: 40),
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(110),
                    child:Image.asset('assets/images/girl.jpg',
                  height: 220, width: 220,),
              )),
              Padding(padding: EdgeInsets.only(top: 30),
                child: Text(
                'Someone Famous',
                style: GoogleFonts.poppins(
                fontSize: 27,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(28, 101, 140, 1)),
              ),
              ),
               Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 177,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Color.fromRGBO(28, 101, 140, 0.75),
                    blurRadius: 2,
                    offset: Offset(1, 12),)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 200, top: 10, left: 15),
                    child: Text('Kontak',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                    ),
                    Row(
                      children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                       child: Icon(Icons.call, size: 40, color: Color.fromRGBO(28, 101, 140, 1),)),
                      Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                       child:   Text('O8123456789', style: GoogleFonts.poppins(fontSize: 25, color: Color.fromRGBO(28, 101, 140, 1)),)),
                    ],),
                     Row(
                      children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                       child: Icon(Icons.mail, size: 40, color: Color.fromRGBO(28, 101, 140, 1),)),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                       child:   Text('some1@gmail.com', style: GoogleFonts.poppins(fontSize: 25, color: Color.fromRGBO(28, 101, 140, 1)),)),
                    ],),
                  ],),
              ),
                      Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: SizedBox(
                        width: 180,
                        height: 38,
                        child: ElevatedButton(
                          child: Text(
                            'Ganti Password',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(3.0),
                            shape: StadiumBorder(),
                            primary: Color.fromRGBO(28, 101, 140, 1),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPass()),
                            );
                          },
                        ),
                      ),
                    ),
            ],
           ),
        ),
      ),
    );
  }
}
