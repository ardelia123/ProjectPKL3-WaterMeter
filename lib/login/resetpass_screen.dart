import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_meter/login/login_screen.dart';

class ResetPass extends StatefulWidget {
  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text(
                'Reset Password',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(28, 101, 140, 1)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 210),
                width: 360,
                height: 177,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Color.fromRGBO(28, 101, 140, 0.25),
                    blurRadius: 10,
                    offset: Offset(0, 4),)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color.fromRGBO(8, 101, 140, 1)),
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Password baru',
                    contentPadding: EdgeInsets.only(top: 20),
                    labelStyle: GoogleFonts.poppins(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(28, 101, 140, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color.fromRGBO(8, 101, 140, 1)),
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Ulangi Password',
                    contentPadding: EdgeInsets.only(top: 20),
                    labelStyle: GoogleFonts.poppins(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(28, 101, 140, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
                  ],),
              ),
              Padding(padding: EdgeInsets.only(top: 35, left: 210),
               child: SizedBox(
                width: 133,
                height: 31,
                child: ElevatedButton (
                  child: Text('Reset',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(3.0),
                  shape: StadiumBorder(),
                  primary: Color.fromRGBO(28, 101, 140, 1),
                ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                },
              ),
              ),),
              Padding(padding: EdgeInsets.only(left: 270, top: 200),
              child: GestureDetector(
                        child: Text(
                          'Batal',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Color.fromRGBO(255, 37, 7, 1)),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginScreen()));
                        },
                      ),)
            ],
          ),
        ),
      ),
    );
  }
}
