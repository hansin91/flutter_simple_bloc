import 'package:flutter/material.dart';
import '../blocs/blocs.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          emailField(bloc),
          SizedBox(height: 10),
          passwordField(bloc),
          SizedBox(height: 10),
          submitButton(bloc)
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
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

  Widget passwordField(Bloc bloc) {
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

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.formValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Login',
            style: TextStyle(
            color: Colors.white
            )
          ),
          color: Colors.blue,
          onPressed: !snapshot.hasData ? null : () {
            print('Hi there');
          }
        );
      }
    );
  }
}