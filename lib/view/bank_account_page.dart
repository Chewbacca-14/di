import 'package:flutter/material.dart';
import 'package:solid/services/account_service.dart';

class BankAccountPage extends StatefulWidget {
  final IAccountService accountService;
  const BankAccountPage({super.key, required this.accountService});

  @override
  State<BankAccountPage> createState() => _BankAccountPageState();
}

class _BankAccountPageState extends State<BankAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.accountService.withdrawMoney(100);
                });
              },
              child: const Text('Withdraw Money'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.accountService.depositMoney(100);
                });
              },
              child: const Text('Deposit Money'),
            ),
            Text('Balance: ${widget.accountService.getBalance()}'),
          ],
        ),
      ),
    );
  }
}
