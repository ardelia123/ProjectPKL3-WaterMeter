import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_meter/scan/scanafter_screen.dart';

import '../login/resetpass_screen.dart';
import '../page/activation_screen.dart';

class ActiveScan extends StatefulWidget {
  @override
  State<ActiveScan> createState() => _ActiveScanState();
}

class _ActiveScanState extends State<ActiveScan> {
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
                    GestureDetector(
                    child: Text('TAP',
                    style: GoogleFonts.poppins(
                      fontSize: 27,
                      fontWeight: FontWeight.w600
                    )),
                     onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => ScanAfter()));
                      },
                    ),
                  ],
                ),
              ),
               Padding(
                      padding: EdgeInsets.only(top: 120),
                      child: SizedBox(
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                          child: Text(
                            'Scan',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 22,
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
                                  builder: (context) => ScanAfter()),
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