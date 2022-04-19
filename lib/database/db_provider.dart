import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider instance = DBProvider._();
  static Database? _database;

  get database async {
    if (_database != null) return _database;
    return await _initDB();
  }

  _initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'finences.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(Database db, int version) async {
    await db.execute(_account);
    await db.execute(_statement);
    await db.insert('account', {'balance': 0});
  }

  String get _account => '''
    CREATE TABLE account (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      balance TEXT NOT NULL
    )
  ''';

  String get _statement => '''
    CREATE TABLE statement (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      date INT NOT NULL,
      description TEXT NOT NULL,
      value REAL NOT NULL,
      type TEXT NOT NULL,
      account_id INTEGER NOT NULL,
      FOREIGN KEY(account_id) REFERENCES account(id)
    )
  ''';
}
