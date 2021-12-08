import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginController extends ChangeNotifier implements Disposable {
  final formKey = GlobalKey<FormState>();
  final tLogin = TextEditingController();
  final tPassword = TextEditingController();
  late bool isloading = false;

  void onclickLogin() async {
    isloading = true;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
