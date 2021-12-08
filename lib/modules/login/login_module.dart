import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/modules/login/login_controller.dart';
import 'package:test_selecti_dev/modules/login/login_page.dart';

class LoginModule extends Module {
  static const ROUTE = '/login';
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(ROUTE, child: (_, args) => LoginPage()),
      ];
}
