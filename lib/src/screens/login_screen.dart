import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

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
        }
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
        }
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        print(formKey.currentState.validate());
      },
      color: Colors.green,
      child: Text('Submit'),
    );
  }
}
