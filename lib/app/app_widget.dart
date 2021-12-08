import 'package:flutter/material.dart';
import 'package:flutter_modular/src/presenters/modular_base.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular(); //added by extension
  }
}
