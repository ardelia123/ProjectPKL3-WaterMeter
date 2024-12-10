import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_meter/login/login_screen.dart';
import 'package:water_meter/page/list_screen.dart';
import 'package:water_meter/page/setting_screen.dart';
import 'package:water_meter/scan/activescan_screen.dart';

import '../profile/profile_screen.dart';

class ActivationScreen extends StatefulWidget {
  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 86, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Selamat Datang',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(28, 101, 140, 1)),
                        ),
                        Text(
                          'Nama User',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Color.fromRGBO(28, 101, 140, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35, left: 45),
                    child: GestureDetector(
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Color.fromRGBO(28, 101, 140, 1),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => ProfileScreen()));
                      },
                    ),
                  ),
                ],
              ),
              Image.asset('assets/images/WaterMeter.png',
                  height: 180, width: 180),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 385,
                height: 310,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 10,
                      offset: Offset(3, 12),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                    ),
                    Text(
                      'Aktivasi Perangkat',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Water Meter',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: TextField(
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromRGBO(8, 101, 140, 1)),
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: 'Nama Device',
                          contentPadding: EdgeInsets.all(1.0),
                          labelStyle: GoogleFonts.poppins(
                            color: Color.fromRGBO(28, 101, 140, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: TextField(
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color.fromRGBO(8, 101, 140, 1)),
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: 'GUID',
                          contentPadding: EdgeInsets.all(1.0),
                          labelStyle: GoogleFonts.poppins(
                            color: Color.fromRGBO(28, 101, 140, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 65),
                      child: SizedBox(
                        width: 133,
                        height: 31,
                        child: ElevatedButton(
                          child: Text(
                            'Activate',
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
                                  builder: (context) => ListScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: IconButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SettingScreen();
                  }));
                  },
                  icon: Icon(Icons.settings_outlined, color: Color.fromRGBO(28, 101, 140, 1),
                    size: 33)),
                onTap: () {
                }),
                GestureDetector(
                 child: Container(
                  alignment: Alignment.topCenter,
                  height: 120,
                  width: 90,
                  decoration: BoxDecoration(
                    color:  Color.fromRGBO(28, 101, 140, 1),
                    border: Border.all(
                      width: 5,
                      color: Color.fromRGBO(225, 245, 254, 1)
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 5, right: 5, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      	Icon(
                          Icons.qr_code_scanner, 
                          color: Colors.white, 
                          size: 43
                        ),
                        Text('Scan Kode!',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
                 onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ActiveScan();
                  }));
                }),
                GestureDetector(
                child:   IconButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListScreen();
                  }));
                  },
                  icon: Icon(
                    Icons.list, 
                    color:  Color.fromRGBO(28, 101, 140, 1),
                    size: 35,)),
                onTap: () {
                }),
            ],
          ),
        ),
      ),
    );
  }
}
