import 'package:flutter/material.dart';
import '../blocs/blocs.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          emailField(),
          SizedBox(height: 10),
          passwordField(),
          SizedBox(height: 10),
          submitButton()
        ],
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Please input your email',
            labelText: 'Email',
            errorText: snapshot.error
          ),
        );
      }
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Please input your password',
            labelText: 'Password',
            errorText: snapshot.error
          ),
        );
      }
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Login', style: TextStyle(
        color: Colors.white
      ),),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}