import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_meter/login/register_screen.dart';
import 'package:water_meter/login/resetpass_screen.dart';

import '../page/activation_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool _isSecurePassword = true;

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
                'Login',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
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
                padding: EdgeInsets.only(top: 15, left: 30, right: 30),
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
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(right: 240, top: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Text(
                          'Lupa Password?',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(8, 101, 140, 1)),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ResetPass()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 40),
               child: SizedBox(
                width: 133,
                height: 31,
                child: ElevatedButton (
                  child: Text('Login',
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
                      MaterialPageRoute(builder: (context) => ActivationScreen()),
                    );
                },
              ),
              ),),
              Padding(padding: EdgeInsets.only(top: 70),
              child: Positioned(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register ',
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
                                      RegisterScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),),
              Padding(padding: EdgeInsets.only(top: 15),
              child: Positioned(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Aktivasi akun mu ',
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
                                      ActivationScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),),
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
