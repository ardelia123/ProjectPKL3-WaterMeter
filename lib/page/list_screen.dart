import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_meter/page/activation_screen.dart';
import 'package:water_meter/page/detail_screen.dart';

import '../login/login_screen.dart';

class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
                    margin: EdgeInsets.only(top: 10, right: 115,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'List Device',
                          style: GoogleFonts.poppins(
                              fontSize: 27,
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

              //Ini List

              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(padding: EdgeInsets.only(left: 12, top: 3),
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:Image.asset('assets/images/WaterMeterPutih.png',
                  height: 110, width: 110,),
                   )),
                   Column(
                    children: [
                       Padding(
                    padding: EdgeInsets.only(left: 13,top: 3),
                  child: Text('ID | Water Meter Punclut',
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                  )),
                  ),
                  Positioned(
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Padding (padding: EdgeInsets.only(top: 78, left:110),),
                      Text(
                        'Tap Untuk ',
                        style: GoogleFonts.poppins(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    GestureDetector(
                        child: Text(
                          'Detail',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(8, 101, 140, 1)),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DetailScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
                    ],
                   )
                  ],),
                  ],
                ),
              ),
              SizedBox(height: 15),
               Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(padding: EdgeInsets.only(left: 12, top: 3),
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:Image.asset('assets/images/WaterMeterPutih.png',
                  height: 110, width: 110,),
                   )),
                   Column(
                    children: [
                       Padding(
                    padding: EdgeInsets.only(left: 13,top: 3),
                  child: Text('ID | Water Meter Punclut',
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                  )),
                  ),
                  Positioned(
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Padding (padding: EdgeInsets.only(top: 78, left:110),),
                      Text(
                        'Tap Untuk ',
                        style: GoogleFonts.poppins(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    GestureDetector(
                        child: Text(
                          'Detail',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(8, 101, 140, 1)),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ActivationScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
                    ],
                   )
                  ],),
                  ],
                ),
              ),
              SizedBox(height: 15),
               Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(225, 245, 254, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(28, 101, 140, 0.25),
                      blurRadius: 5,
                      offset: Offset(2, 8),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(padding: EdgeInsets.only(left: 12, top: 3),
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:Image.asset('assets/images/WaterMeterPutih.png',
                  height: 110, width: 110,),
                   )),
                   Column(
                    children: [
                       Padding(
                    padding: EdgeInsets.only(left: 13,top: 3),
                  child: Text('ID | Water Meter Punclut',
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                  )),
                  ),
                  Positioned(
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Padding (padding: EdgeInsets.only(top: 78, left:110),),
                      Text(
                        'Tap Untuk ',
                        style: GoogleFonts.poppins(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    GestureDetector(
                        child: Text(
                          'Detail',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color.fromRGBO(8, 101, 140, 1)),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ActivationScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
                    ],
                   )
                  ],),
                  ],
                ),
              ),
          ],
         ),
        ) ,
      ),
       bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 120,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 101, 140, 1),
                    border: Border.all(
                      width: 5,
                      color: Color.fromRGBO(225, 245, 254, 1),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 5, right: 5, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      	Icon(
                          Icons.qr_code_scanner, 
                          color: Colors.white, 
                          size: 38
                        ),
                        Text('Scan Kode!',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.white
                        ),
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