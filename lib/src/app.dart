import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' log me in!',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log me in!'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}
