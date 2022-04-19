import 'package:fiancas/database/db_provider.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AccountRepository extends ChangeNotifier{
  late Database db;
  double _balance = 0;

  get balance => _balance;

  AccountRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getBalance();
  }

  _getBalance() async {
    db = await DBProvider.instance.database;
    List account = await db.query('account', limit: 1);
    _balance = account.first['balance'];
    // notifyListeners();
  }

  _setBalance(double balance) async {
    db = await DBProvider.instance.database;
    await db.update('account', {'balance': balance});
    // where: 'id = ?', whereArgs: [1]
    _balance = balance;
    // notifyListeners();
  }
}