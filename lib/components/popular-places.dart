import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/screens/booking/startbooking.dart';
import 'package:FlightTicket_app/screens/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter_app/animation/RotationRoute.dart';
// import 'package:flutter_app/animation/ScaleRoute.dart';
// import 'package:flutter_app/pages/FoodDetailsPage.dart';
final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class PopularPlacesWidget extends StatefulWidget {
  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

// Future<void> _signOut() async {
//   await FirebaseAuth.instance.signOut();
// }
// void _signOut() async {
//   await _firebaseAuth.signOut();
// }

FirebaseAuth auth = FirebaseAuth.instance;
@override
void _signOut() async {
  await _firebaseAuth.signOut();
}

class _PopularFoodsWidgetState extends State<PopularPlacesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularPlacesTitle(),
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

class PopularPlaces extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  PopularPlaces(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.rating,
      @required this.numberOfRating,
      @required this.price,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      // },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                child: Container(
                  width: 220,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: double.infinity,
                              padding: EdgeInsets.only(right: 5, top: 5),
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFfae3e2),
                                        blurRadius: 25.0,
                                        offset: Offset(0.0, 0.75),
                                      ),
                                    ]),
                                // child: Icon(
                                //   Icons.favorite,
                                //   color: Color(0xFFfb3132),
                                //   size: 16,
                                // ),
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: Image.asset(
                                  'assets/' + imageUrl + ".jpg",
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 1,
                                margin: EdgeInsets.all(5),
                              )
                              // child: Center(
                              //     child: Image.asset(
                              //   'assets/' + imageUrl + ".jpg",
                              //   width: 200,
                              //   height: 140,
                              // )),
                              )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFfae3e2),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              // child: Icon(
                              //   Icons.near_me,
                              //   color: Color(0xFFfb3132),
                              //   size: 16,
                              // ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                              // Container(
                              //   padding: EdgeInsets.only(top: 3, left: 5),
                              //   child: Row(
                              //     children: <Widget>[
                              //       Icon(
                              //         Icons.star,
                              //         size: 10,
                              //         color: Color(0xFFfb3132),
                              //       ),
                              //       Icon(
                              //         Icons.star,
                              //         size: 10,
                              //         color: Color(0xFFfb3132),
                              //       ),
                              //       Icon(
                              //         Icons.star,
                              //         size: 10,
                              //         color: Color(0xFFfb3132),
                              //       ),
                              //       Icon(
                              //         Icons.star,
                              //         size: 10,
                              //         color: Color(0xFFfb3132),
                              //       ),
                              //       Icon(
                              //         Icons.star,
                              //         size: 10,
                              //         color: Color(0xFF9b9b9c),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                // child: Text("($numberOfRating)",
                                //     style: TextStyle(
                                //         color: Color(0xFF6e6e71),
                                //         fontSize: 10,
                                //         fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('\$' + price,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularPlacesTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      // child: Row(

      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: <Widget>[
      //     Text("Best Offers",
      //         style: GoogleFonts.spartan(
      //             color: CustomizedColors.createaccounttitlecolor,
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold)),
      //     Text(
      //       "View all",
      //       style: GoogleFonts.spartan(
      //           color: CustomizedColors.titlepinkcolor,
      //           fontSize: 12,
      //           fontWeight: FontWeight.bold),
      //     ),
      //   ],
      // ),
      child: ListTile(
        title: Text("Best Offers",
            style: GoogleFonts.spartan(
                color: CustomizedColors.createaccounttitlecolor,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        subtitle: Text(
          "Recommended Destinations",
          style: GoogleFonts.spartan(
              color: CustomizedColors.emailtitle,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        trailing: InkWell(
          onTap: () {
            // _signOut();
          },
          child: Text(
            "View all",
            style: GoogleFonts.spartan(
                color: CustomizedColors.titlepinkcolor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularPlaces(
            name: "Thailand",
            imageUrl: "Thailand-Beaches-and-Scenery",
            rating: 'Bangok',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularPlaces(
            name: "NewYork",
            imageUrl: "Sightseeing-New-York-City-Sightseeing-pass",
            rating: "USA",
            numberOfRating: "100",
            price: "17.03",
            slug: ""),
        PopularPlaces(
            name: "Italy",
            imageUrl: "Sightseeing-New-York-City-Sightseeing-pass",
            rating: "Paris",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
      ],
    );
  }
}
