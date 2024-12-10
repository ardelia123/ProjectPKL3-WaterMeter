import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'activation_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
                    margin: EdgeInsets.only(top: 10, right: 77),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 36,
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
                    margin: EdgeInsets.only(top: 10, right: 95),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Setting Device',
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(28, 101, 140, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1)),
                  )
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                width: 360,
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Color.fromRGBO(28, 101, 140, 0.25),
                    blurRadius: 10,
                    offset: Offset(3, 10),)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
              Padding(padding: EdgeInsets.only(top: 15, right: 15)),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text('Configure Wifi',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color.fromRGBO(28, 101, 140, 1),
                )),
              ),
              Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                    height: 40,
                    width: 330,
                    margin: EdgeInsets.only(right: 5, left: 5, top: 18),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 8), 
                     child: Text('Configure Wifi', 
                    style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16)),
                    ),
                  ),
                  ])),
                ),
                       Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                    height: 40,
                    width: 330,
                    margin: EdgeInsets.only(right: 5, left: 5, top: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 65, vertical: 8), 
                     child: Text('Configure Wifi (No Scan)', 
                    style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16)),
                    ),
                  ),
                  ])),
                ),
                       Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                    height: 40,
                    width: 330,
                    margin: EdgeInsets.only(right: 5, left: 5, top: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 146, vertical: 8), 
                     child: Text('Info', 
                    style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16)),
                    ),
                  ),
                  ])),
                ),
                       Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                    height: 40,
                    width: 330,
                    margin: EdgeInsets.only(right: 5, left: 5, top: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 140, vertical: 8), 
                     child: Text('Reset', 
                    style: GoogleFonts.poppins(
                      color: Colors.white, 
                      fontSize: 16)),
                    ),
                  ),
                  ])),
                ),
               ],
              ),
            ), 
          ],
        ),
        ),
      ),
    );
  }
}