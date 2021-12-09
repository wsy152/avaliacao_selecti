import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/app/core/api/api_response.dart';
import 'package:test_selecti_dev/app/core/api/login_api.dart';
import 'package:test_selecti_dev/app/core/utils/snackbar_service.dart';

class LoginController extends ChangeNotifier implements Disposable {
  final formKey = GlobalKey<FormState>();
  final tLogin = TextEditingController();
  final tPassword = TextEditingController();
  final SnackBarService snackbarService = Modular.get<SnackBarService>();
  late bool isloading = false;

  void onclickLogin() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isloading = true;
    notifyListeners();

    String login = tLogin.text;
    String password = tPassword.text;

    ApiResponse? response = await LoginApi.login(
      login: login,
      password: password,
    );
    if (response!.responseSucess == true) {
      //Modular.to.pushNamed(HomeModule.ROUTE);
      isloading = false;
      notifyListeners();
    } else {
      isloading = false;
      notifyListeners();
      // snackbarService.error("${response.msg}");
    }
  }

  String? validateLogin(String? value) {
    if (value!.isEmpty) {
      return "Digite o login";
    }
    if (value.length < 3) {
      return "Login não pode ser menor que 3 caracteres";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Digite a Senha";
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
