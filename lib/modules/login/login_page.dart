import 'package:flutter/material.dart';
import 'package:test_selecti_dev/modules/login/widgets/widget_body.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SelecTi'),
      ),
      body: Builder(builder: (context) {
        return WidgetBody();
      }),
    );
  }
}
