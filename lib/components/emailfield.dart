import 'package:FlightTicket_app/blocs/bloc.dart';
// import 'package:FlightTicket_app/blocs/providers.dart';
import 'package:FlightTicket_app/common/colors.dart';
import 'package:flutter/material.dart';


// class Email extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final bloc = Provider.of(context);

//     return emailField(bloc);
//   }
// }
Widget emailField(Bloc bloc) {
  // StreamBuilder is the core of how widgets get updated.
  return StreamBuilder(
    // Watch the stream...
    stream: bloc.email,
    // Snapshot arg contains information from the stream. If there's an error, assign to error text.
    builder: (context, snapshot) {
      return TextField(
        // onChanged listens to TextField changes and adds to bloc.changeEmail with '_email.sink.add'
        onChanged: bloc.changeEmail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'Email Address',
          labelStyle: TextStyle(
              color: CustomizedColors.emailtitle, fontWeight: FontWeight.bold),
          suffixIcon: InkWell(
              child: Icon(
            Icons.email,
            color: CustomizedColors.titlepinkcolor,
          )

              // errorText: _wrongPassword ? _passwordText : null,

              ),
          // Take from snapshot, the error message
          errorText: snapshot.error,
        ),
      );
    },
  );
}
