import 'package:builders/builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/modules/login/login_controller.dart';

class WidgetBody extends StatefulWidget {
  const WidgetBody({Key? key}) : super(key: key);

  @override
  _WidgetBodyState createState() => _WidgetBodyState();
}

class _WidgetBodyState extends ModularState<WidgetBody, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(builder: (context, presenter) {
      return Form(
        key: controller.formKey,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(25),
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text('Login'), hintText: 'Digite seu login'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text('Password'), hintText: 'Digite seu Password'),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Container())
              ],
            ),
          ),
        ),
      );
    });
  }
}
