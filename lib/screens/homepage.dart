import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/components/best-offers.dart';
import 'package:FlightTicket_app/components/bottom-navigation.dart';
import 'package:FlightTicket_app/components/popular-places.dart';
import 'package:FlightTicket_app/components/sliding-menus.dart';
import 'package:FlightTicket_app/components/spacer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: Text(
                  "Home",
                  style: GoogleFonts.spartan(
                      color: CustomizedColors.createaccounttitlecolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TopMenus(),
              PopularPlacesWidget(),
              BestOffersWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}
