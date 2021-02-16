import 'package:FlightTicket_app/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestOffersWidget extends StatefulWidget {
  @override
  _BestFoodWidgetState createState() => _BestFoodWidgetState();
}

class _BestFoodWidgetState extends State<BestOffersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          BestFoodTitle(),
          Expanded(
            child: BestFoodList(),
          )
        ],
      ),
    );
  }
}

class BestFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: ListTile(
        title: Text("Popular Places",
            style: GoogleFonts.spartan(
                color: CustomizedColors.createaccounttitlecolor,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        trailing: Text(
          "View all",
          style: GoogleFonts.spartan(
              color: CustomizedColors.titlepinkcolor,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class BestOffersTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  BestOffersTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.price,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              boxShadow: [
                /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
              ],
            ),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'assets/' + imageUrl + ".jpg",
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
            ),
          ),
        ],
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BestOffersTiles(
            name: "Paris",
            imageUrl: "Sightseeing-New-York-City-Sightseeing-pass",
            price: "11.10",
            slug: ""),
        BestOffersTiles(
            name: "Maldives",
            imageUrl: "lady-liberty-facing-the",
            price: "23.0",
            slug: ""),
        BestOffersTiles(
            name: "Switzerland",
            imageUrl: "Thailand-Beaches-and-Scenery",
            price: '15.06',
            slug: "fried_egg"),
        BestOffersTiles(
            name: "ireland",
            imageUrl: "Sightseeing-New-York-City-Sightseeing-pass",
            price: "12.00",
            slug: ""),
        BestOffersTiles(
            name: "Scotland",
            imageUrl: "made-in-italy-glance",
            price: "12.00",
            slug: ""),
        BestOffersTiles(
            name: "Thailand",
            imageUrl: "Sightseeing-New-York-City-Sightseeing-pass",
            price: "12.00",
            slug: ""),
      ],
    );
  }
}
