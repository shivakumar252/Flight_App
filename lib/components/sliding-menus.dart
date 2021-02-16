import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/components/spacer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenus extends StatefulWidget {
  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TopMenuTiles(
              name: "Flight", img_url: "aeroplane", color: Colors.purple),
          TopMenuTiles(name: "Hotel", img_url: "hotel", color: Colors.white),
          TopMenuTiles(name: "Car", img_url: "car", color: Colors.redAccent),
          TopMenuTiles(
              name: "Restaurant",
              img_url: "restaurant",
              color: Colors.blueGrey),
          TopMenuTiles(
              name: "Tourism", img_url: "tour", color: Colors.orangeAccent),
          TopMenuTiles(
              name: "Flight", img_url: "aeroplane", color: Colors.purple),
          TopMenuTiles(name: "Hotel", img_url: "hotel", color: Colors.white),
          TopMenuTiles(name: "Car", img_url: "car", color: Colors.redAccent),
          TopMenuTiles(
              name: "Restaurant",
              img_url: "restaurant",
              color: Colors.blueGrey),
          TopMenuTiles(
              name: "Tourism", img_url: "tour", color: Colors.orangeAccent),
        ],
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  String name;
  // ignore: non_constant_identifier_names
  var img_url;
  Color color;

  TopMenuTiles(
      {Key key,
      @required this.name,
      // ignore: non_constant_identifier_names
      @required this.img_url,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
              decoration: new BoxDecoration(
                  // boxShadow: [
                  //   new BoxShadow(
                  //     color: Colors.white,
                  //     blurRadius: 25.0,
                  //     offset: Offset(0.0, 0.75),
                  //   ),
                  // ],
                  ),
              child: Card(
                color: color,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(60.0),
                  ),
                ),
                child: Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Image.asset(
                        'assets/' + img_url + ".png",
                        width: 40,
                        height: 40,
                        // color: Colors.white,
                      ),
                    )),
              )),
          Text(
            name,
            style: GoogleFonts.spartan(
                color: CustomizedColors.createaccounttitlecolor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// airplanemode_active
// train
// car_rental
// restaurant
