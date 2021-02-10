import 'package:FlightTicket_app/common/commoncolors.dart';
import 'package:flutter/material.dart';

class RaisedButtons extends StatefulWidget {
  final String text;
  final GestureTapCallback onPressed;
const RaisedButtons({this.text, this.onPressed}) ;

  @override
  _RaisedButtonState createState() => _RaisedButtonState();
}

class _RaisedButtonState extends State<RaisedButtons> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 50,
      width: 200,
      child: RaisedButton(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text('text',style:TextStyle(fontSize: 16.0,color: Colors.white)),
        color: CustomizedColors.ButtonColor,
        
      ),
    );
  }
}
