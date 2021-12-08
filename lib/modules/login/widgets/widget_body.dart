import 'package:builders/builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/modules/login/login_controller.dart';
import 'package:test_selecti_dev/modules/login/widgets/wedget_button.dart';
import 'package:test_selecti_dev/modules/login/widgets/widget_test_fields.dart';

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
                WidgetTextField(
                  enabled: true,
                  label: 'Login',
                  hint: 'Digite seu login',
                  validatorText: 'Digite se login',
                ),
                SizedBox(
                  height: 20,
                ),
                WidgetTextField(
                  enabled: true,
                  label: 'Password',
                  hint: 'Digite seu Password',
                  validatorText: 'Digite seu Password',
                ),
                SizedBox(
                  height: 20,
                ),
                WidgetButton(
                  enabled: true,
                  label: 'Login',
                  isloading: false,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
