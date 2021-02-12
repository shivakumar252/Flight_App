import 'package:FlightTicket_app/common/colors.dart';
import 'package:FlightTicket_app/common/strings.dart';
import 'package:FlightTicket_app/components/raisedbutton.dart';
import 'package:FlightTicket_app/components/spacer.dart';
import 'package:FlightTicket_app/screens/signup/signup.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StartBooking extends StatefulWidget {
  @override
  _StartBookingState createState() => _StartBookingState();
}

class _StartBookingState extends State<StartBooking> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    ImageList.first_image,
    ImageList.second_image,
    ImageList.third_image,
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    try {
      if (width > 600) {
        return SliderView(height=150);
      } else {
          return SliderView(height=500);
      }
    } catch (e) {

    }
  }

//Slider View of the widget//

  // ignore: non_constant_identifier_names
  Widget SliderView(double height) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        elevation: 0.2,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: height,
              aspectRatio: 16 / 9,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: false,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          // color: Colors.green,
                          ),
                      child: Image.asset(
                        imgUrl,
                        width: 600,
                        fit:BoxFit.fitHeight,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
           SpacerClass(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? CustomizedColors.buttonColor
                        : CustomizedColors.dotsColor,
                  ),
                );
              }),
            ),
            SpacerClass(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButtons(
                  text: Titles.startBooking,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
