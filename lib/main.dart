import 'package:flutter/material.dart';
import 'package:solid/di/injection.dart';
import 'package:solid/services/account_service.dart';
import 'package:solid/view/bank_account_page.dart';

void main() {
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BankAccountPage(accountService: getIt<IAccountService>()),
    );
  }
}
