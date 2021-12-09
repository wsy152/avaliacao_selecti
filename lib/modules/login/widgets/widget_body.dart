import 'package:builders/builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/app/core/utils/snackbar_service.dart';
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
    Modular.get<SnackBarService>()..setAppContext(context);
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
                  controller: controller.tLogin,
                  hint: 'Digite seu login',
                  validatorText: 'Digite se login',
                  validator: controller.validateLogin,
                ),
                SizedBox(
                  height: 20,
                ),
                WidgetTextField(
                  enabled: true,
                  label: 'Password',
                  hint: 'Digite seu Password',
                  controller: controller.tPassword,
                  validatorText: 'Digite seu Password',
                  validator: controller.validatePassword,
                ),
                SizedBox(
                  height: 20,
                ),
                WidgetButton(
                  enabled: true,
                  label: 'Login',
                  isloading: controller.isloading,
                  onPressed: () => controller.onclickLogin(),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
