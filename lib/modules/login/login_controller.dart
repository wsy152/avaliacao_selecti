import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginController extends ChangeNotifier implements Disposable {
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
  }
}
