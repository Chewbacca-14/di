import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:solid/services/account_service.dart';

@Injectable(as: IAccountService)
class AccountServiceImpl implements IAccountService {
  double _balance = 0;
  double get balance => _balance;

  @override
  double depositMoney(double amount) {
    _balance += amount;
    return getBalance();
  }

  @override
  double getBalance() {
    return _balance;
  }

  @override
  double withdrawMoney(double amount) {
    if (canWithdraw(amount: amount, balance: balance)) {
      _balance -= amount;
      return getBalance();
    } else {
      return _balance;
    }
  }

  @override
  bool canWithdraw({required double amount, required double balance}) {
    if (amount > balance) {
      return false;
    } else {
      return true;
    }
  }
}
