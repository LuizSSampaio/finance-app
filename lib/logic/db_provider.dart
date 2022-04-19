import 'package:fiancas/models/statement_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

class DBProvider {
  Future<Database> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'finances.db');

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute("""
        CREATE TABLE statement (
        title TEXT,
        description TEXT, 
        amount FLOAT(2), 
        type TEXT)""");
    });
  }

  Future<int> addStatement(StatementModel statement) async {
    final db = await init();
    return db.insert(
      'statement',
      statement.toMap(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  Future<List<StatementModel>> fetchStatement() async {
    final db = await init();
    final List<Map<String, dynamic>> maps = await db.query('statement');
    return List.generate(maps.length, (i) {
      return StatementModel(
        title: maps[i]['title'],
        description: maps[i]['description'],
        amount: maps[i]['amount'],
        type: maps[i]['type'],
      );
    });
  }

  Future<int> deleteStatement(int rowid) async {
    final db = await init();
    return db.delete('statement', where: 'rowid = ?', whereArgs: [rowid]);
  }

  Future<int> updateStatement(int rowid, StatementModel statement) async {
    final db = await init();
    return db.update('statement', statement.toMap(),
        where: 'rowid = ?', whereArgs: [rowid]);
  }
}
