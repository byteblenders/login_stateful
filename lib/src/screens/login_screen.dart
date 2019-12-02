import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(height: 20.0),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'E-Mail address',
        hintText: 'your@email.com',
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'please enter a valid email';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      validator: (String value) {
        if (value.length < 4) {
          return 'enter a valid password of at least 4 characters';
        } else {
          return null;
        }
      },
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('time to post $email and $password to the API');
        }
      },
      color: Colors.green,
      child: Text('Submit'),
    );
  }
}
