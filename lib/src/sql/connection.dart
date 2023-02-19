// import 'dart:async';
// import 'dart:io';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'package:myumsida/src/models/modelsmahasiswa.dart';

// class DatabaseInstance {
//   final String _databasename = "mahasiswa.db";
//   final int _versiondb = 1;

//   //data mahasiswa
//   final String tablename = "datamahasiswa";
//   final String imageurl = "imageurl";
//   final String nama = "nama";
//   final String nim = "nim";
//   final String passw = "passw";
//   final String prodi = "prodi";
//   final String alamat = "alamat";
//   final String tanggallahir = "tanggallahir";
//   final String kelas = "kelas";
//   final String fakultas = "fakultas";
//   final int smester = 4;

//   Database? database;

//   Future<Database> databases() async {
//     if (database != null) {
//       return database!;
//     }
//     database = await _initDatabase();
//     return database!;
//   }

//   Future _initDatabase() async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, _databasename);
//     return openDatabase(path, version: _versiondb, onCreate: _onCreate);
//   }

//   Future _onCreate(Database db, int version) async {
//     await db.execute(
//         'CREATE TABLE $tablename ($nim TEXT PRIMARY KEY, $nama TEXT, $passw TEXT, $alamat TEXT, $fakultas TEXT, $prodi TEXT, $smester INTEGER, $tanggallahir TEXT, $imageurl TEXT)');
//   }

//   Future<List<ModelsMahasiswa>> all() async {
//     final datatmp = await database!.query(tablename);
//     List<ModelsMahasiswa> result =
//         datatmp.map((e) => ModelsMahasiswa.fromJson(e)).toList();
//     return result;
//   }

//   Future<int> insert(Map<String, dynamic> row) async {
//     final query = await database!.insert(tablename, row);
//     return query;
//   }
// }
