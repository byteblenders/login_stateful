import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          SizedBox(height: 20.0),
          submitButton(),
        ],
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
    );
  }

  Widget passwordField() {
    return TextFormField(
      // obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {},
      color: Colors.green,
      child: Text('Submit'),
    );
  }
}
