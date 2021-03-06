import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/app/core/utils/snackbar_service.dart';
import 'package:test_selecti_dev/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => SnackBarService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(LoginModule.ROUTE, module: LoginModule()),
      ];
}
