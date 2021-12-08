import 'package:builders/builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/app/app_widget.dart';

import 'app/app_module.dart';

void main() {
  Builders.systemInjector(Modular.get);

  return runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
