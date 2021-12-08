import 'package:flutter/material.dart';
import 'package:flutter_modular/src/presenters/modular_base.dart';
import 'package:test_selecti_dev/modules/login/login_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: LoginModule.ROUTE,
    ).modular(); //added by extension
  }
}
