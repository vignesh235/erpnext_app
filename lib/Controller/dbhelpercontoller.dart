import 'package:sqflite/sqflite.dart' as sql;
import 'package:get/get.dart';

class Databsehelper extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initializeDatabase();
  }

  static Future<void> initializeDatabase() async {
    final database = await openDatabase();
    print(
        "------------------------------------xxxxxxxxxxxxxxxxxxxxxxxxxx--------------------");
    print(database);
    if (database == null) {
      await createTables(database);
    }
  }

  static Future<sql.Database> openDatabase() async {
    final databasePath = await sql.getDatabasesPath();
    final path = '$databasePath/erpnext.db';
    return sql.openDatabase(path, version: 1, onCreate: (db, version) async {
      await createTables(db);
    });
  }

  static Future<void> createTables(sql.Database database) async {
    // await database.execute("DROP TABLE IF EXISTS attendancetable");

    await database.execute("""CREATE TABLE userdetails(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    evn TEXT,
    fullname TEXT,
    cookie TEXT,
    requestheader TEXT,
    image TEXT,
    email TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  )
  """);
  }
}
