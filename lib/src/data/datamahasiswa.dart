import 'dart:convert';
import 'dart:io';

class Data {
  String? nim;
  String? password;
  String filePath = "./";

  Future<List<Map>> readJsonFile(String filePath) async {
    var input = await File(filePath).readAsString();
    var map = jsonDecode(input);
    return map['users'];
  }

  // Data({required this.nim, required this.password});

  Map<String, String> datamahasiswa = {
    "image": "",
    "prodi": "Informatika",
    "fakultas": "Sains dan Teknologi",
    "nama": "Saputra Budianto",
    "nim": "211080200072",
    "passw": "KaliLinux",
  };

  List<Map<String, dynamic>> personalinfo = [
    {
      "nama": "",
      "prodi": "",
      "fakultas": "",
      "alamat": "",
      "password": "",
      "nim": "",
      "image": "",
      "tempatlahir": ""
    }
  ];
}
