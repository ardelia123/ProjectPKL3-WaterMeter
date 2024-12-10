import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/resetpass_screen.dart';
import '../page/activation_screen.dart';
import '../page/detail_screen.dart';
import '../page/list_screen.dart';

class ScanAfter extends StatefulWidget {
  @override
  State<ScanAfter> createState() => _ScanAfterState();
}

class _ScanAfterState extends State<ScanAfter> {
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
                    margin: EdgeInsets.only(top: 10, right: 115),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Scan QR',
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
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                  height: 340,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Color.fromRGBO(28, 101, 140, 1),
                    )
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_scanner,
                    size: 300,
                    color:  Color.fromRGBO(28, 101, 140, 1)),
                  ],
                ),
              ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text(
                      'Nama Device',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color.fromRGBO(8, 101, 140, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10,),
                     child: Text(
                      'Timbangan Gas Lingkar',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromRGBO(8, 101, 140, 1),
                          fontWeight: FontWeight.w600),
                    ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text(
                      'GUID',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color.fromRGBO(8, 101, 140, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10,),
                     child: Text(
                      '000000001111000000',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromRGBO(8, 101, 140, 1),
                          fontWeight: FontWeight.w600),
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
                                  builder: (context) => DetailScreen()),
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
    );
  }
}