import 'dart:async';

import 'package:FlightTicket_app/screens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreenPage())));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: HexColor('#000099'),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https://www.makealltrip.com/template/img/loader.gif",height:125,width: 125,),
              Image.asset("assets/splashlogo.png", height: 85, width: 85),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("navana",
                    style: GoogleFonts.spartan(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                // Text(""),
                Text(" air",
                    style: GoogleFonts.spartan(
                        color: Colors.pink[300],
                        fontSize: 40,
                        fontWeight: FontWeight.bold))
              ])
            ]),
      ),
    );
  }
}
