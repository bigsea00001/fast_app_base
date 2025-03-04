import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accountTypeName: '저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan4 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan5 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan6 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan7 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan8 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan9 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountShinhan10 =
    BankAccount(bankShinhan, 300000000, accountTypeName: '저축예금');
final bankAccountToss = BankAccount(bankTtoss, 5000000);
final bankAccountKakao =
    BankAccount(bankKakao, 7000000, accountTypeName: '입출금통장');

void main() {
  // for(final item in bankAccounts) {
  //   print(item.accountTypeName);
  // }

  // for (final entry in bankMap.entries) {
  //   print(
  //       "${entry.key}:${entry.value.accountTypeName ?? entry.value.bank.name}");
  // }

  // print(bankSet.contains(bankAccountShinhan1));
}

//List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountShinhan4,
  bankAccountShinhan5,
  bankAccountShinhan6,
  bankAccountShinhan7,
  bankAccountShinhan8,
  bankAccountShinhan9,
  bankAccountShinhan10,
  bankAccountToss,
  bankAccountKakao,
];

//Map
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2
};

//Set
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
};
