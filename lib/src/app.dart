import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {

  Widget build (context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me In',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: LoginScreen(),
        ),
      )
    );
  }
}