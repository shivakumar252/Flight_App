import 'package:FlightTicket_app/common/commonbuttons.dart';
import 'package:FlightTicket_app/common/commoncolors.dart';
import 'package:FlightTicket_app/common/titles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class MainScreenPage extends StatefulWidget {
  @override
  _MainScreenPageState createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  // final PageController _pageController = PageController();
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/cartoon-character-design-female-travel-with-luggage-and-passport-on-M6P8GW.jpg',
    'assets/depositphotos_389023924-stock-illustration-woman-man-suitcase-awaits-boarding.jpg',
    'assets/stock-vector-woman-travel-alone-character-cartoon-of-woman-travel-woman-and-suitcase-abstract-nature-border-1424820401.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    if (width > 600) {
      return HorizontalView();
    } else {
      return VerticalView();
    }
  }

  Widget HorizontalView() {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        elevation: 0.2,
        backgroundColor: Colors.white,
      ),
      body: Container(
        // height: height,
        // width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 200,
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
                        width: 350,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? CustomizedColors.ButtonColor : CustomizedColors.DotsColor,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // RaisedButtons(
                //       text: CustomizedTitles.StartBooking,
                //       onPressed: (){
                //       },
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget VerticalView () {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        elevation: 0.2,
        backgroundColor: Colors.white,
      ),
      body: Container(
        // height: height,
        // width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 400.0,
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
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? CustomizedColors.ButtonColor : CustomizedColors.DotsColor,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // RaisedButtons(
                //  text:CustomizedTitles.StartBooking,
                //   onPressed: (){

                //   },
                // )
                
                Container(
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    color: CustomizedColors.ButtonColor,
                    textColor: Colors.white,
                    child: Text("START  BOOKING".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

 
}
