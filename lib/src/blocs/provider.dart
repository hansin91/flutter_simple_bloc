import 'package:flutter/material.dart';
import 'blocs.dart';

class Provider extends InheritedWidget {
  final bloc = new Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static Bloc of(context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}