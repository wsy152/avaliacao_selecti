import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/app/core/utils/snackbar_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.get<SnackBarService>()..setAppContext(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page SelecTi'),
      ),
    );
  }
}
