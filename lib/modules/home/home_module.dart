import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_selecti_dev/modules/home/home_controller.dart';
import 'package:test_selecti_dev/modules/home/home_page.dart';

class HomeModule extends Module {
  static const ROUTE = '/login';
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => HomeController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(ROUTE, child: (_, args) => HomePage()),
      ];
}
