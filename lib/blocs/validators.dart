import 'dart:async';

class Validators {
  // Assign instance variables
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      // Handle incoming email data

      handleData: (email, sink) {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(email) || email == null) {
      sink.addError('Enter a valid email.');
    }
    // return 'Enter a valid email address';

    else {
      sink.add(email);
    }

    // Validate email data
    // if(email.contains('@')) {
    //   sink.add(email);
    // } else {
    //   sink.addError('Enter a valid email.');
    // }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    // Validate if password is at least 4 characters
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError('Password must be at least 4 characters.');
    }
  });

  final validateTelephoneField = StreamTransformer<String, String>.fromHandlers(
      handleData: (telephone, sink) {
    if (telephone.length == 14) {
      sink.add(telephone);
    } else {
      sink.addError('Phone number must be 12 characters');
    }
  });

  final validateNameField = StreamTransformer<String, String>.fromHandlers(
 handleData: (name,sink ){
   if(name!=''){
     sink.add(name);
   }else{
     sink.addError('Please Enter the Name');
   }
 }
  );
}
