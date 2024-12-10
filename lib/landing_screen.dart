import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 6), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset(
              'assets/images/WaterMeter.png',
              height: 300,
              width: 300,
            ),
            Text('Smart',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(28, 101, 140, 1)),
            ),
            Text('Water Meter',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color.fromRGBO(28, 101, 140, 1)),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
