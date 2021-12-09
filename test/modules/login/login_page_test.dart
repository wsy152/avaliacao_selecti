import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_selecti_dev/modules/login/login_page.dart';

void main() {
  Future<void> loadPage(tester) async {
    final loginPage = MaterialApp(home: LoginPage());
    await tester.pumpWidget(loginPage);
  }

  testWidgets('Validar email', (tester) async {
    await loadPage(tester);
    final name = faker.internet.userName();

    // TODO: Implement test
  });
}
