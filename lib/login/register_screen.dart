import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_meter/login/login_screen.dart';
import 'package:water_meter/login/resetpass_screen.dart';

import '../page/activation_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override

  bool _isSecurePassword = true;

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
              Text(
                'Smart',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(28, 101, 140, 1)),
              ),
              Text(
                'Water Meter',
                style: GoogleFonts.poppins(
                    fontSize: 20, color: Color.fromRGBO(28, 101, 140, 1)),
              ),
              Image.asset('assets/images/WaterMeter.png',
                  height: 202, width: 202),
              Text(
                'Register',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color.fromRGBO(8, 101, 140, 1)),
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Nama',
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
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color.fromRGBO(8, 101, 140, 1)),
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Nomor Telepon',
                    contentPadding: EdgeInsets.all(1.0),
                    labelStyle: GoogleFonts.poppins(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color.fromRGBO(8, 101, 140, 1)),
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email',
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
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: TextField(
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Color.fromRGBO(8, 101, 140, 1)),
                  obscureText: _isSecurePassword,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.all(1.0),
                    labelStyle: GoogleFonts.poppins(
                      color: Color.fromRGBO(28, 101, 140, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: togglePassword(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 133,
                height: 31,
                child: ElevatedButton (
                  child: Text('Register',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(5.0),
                  shape: StadiumBorder(),
                  primary: Color.fromRGBO(28, 101, 140, 1),
                ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivationScreen()),
                    );
                },
              ),
              ),
              SizedBox(height: 60),
              Positioned(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login ',
                        style: GoogleFonts.poppins(
                        fontSize: 15, color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    GestureDetector(
                        child: Text(
                          'Disini!',
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Color.fromRGBO(8, 101, 140, 1)),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Color.fromRGBO(28, 101, 140, 1),
    );
  }

}
