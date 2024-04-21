abstract interface class IAccountService {
  double getBalance();
  double withdrawMoney(double amount);
  double depositMoney(double amount);
  bool canWithdraw({required double amount, required double balance});
}
