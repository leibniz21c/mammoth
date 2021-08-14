import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

class Mongo {
  var _db;
  var _coll;
  String createMsg = '';

  Mongo() {
    _db = Db("mongodb://mammoth:keanu123@27.96.131.108:20003/admin");
    _coll = _db.collection('find');
  }

  Future<void> open() async => await _db.open();
  Future<void> close() async => await _db.close();
  Future<void> showAll() async => await _coll.find().forEach((v) => print(v));

  Future<bool> createAccount(String email, String name, String pw) async {
    // 이메일 입력 후 겹치는 이메일 없으면 이름, pw 입력하고 가입

    var user = await _coll.find({'email': email}).toList(); // 입력한 email 있는지 조회

    if (user.isEmpty) {
      String hashed = new DBCrypt().hashpw(pw, new DBCrypt().gensalt());
      await _coll.insertOne(<String, dynamic>{
        "email": email,
        "password": hashed,
        "ipv4": "",
        "port": {
          "50010": 0,
          "50020": 0,
          "50070": 0,
          "50075": 0,
          "50090": 0,
          "8020": 0,
          "9000": 0,
          "10020": 0,
          "19888": 0,
          "8030": 0,
          "8031": 0,
          "8032": 0,
          "8033": 0,
          "8040": 0,
          "8042": 0,
          "8088": 0
        },
        "joinDate": new DateTime.now().toIso8601String(),
      });
      return true;
    } else {
      return false;
    }
  }

  // }

  Future<void> login(String email, String pw) async {
    String hashed = new DBCrypt().hashpw(pw, new DBCrypt().gensalt());
    var user = await _coll.find({'email': email, 'password': hashed}).toList();
    if (user.isEmpty) {
      print('Login failed');
    } else {
      print('Welcome, ${user.first['name']}');
    }
  }
}

// Future<void> initDB(DbCollection coll) async {
//   await coll.insertMany([
//     {'name': 'Yang Hee Sung', 'email': 'hee@sung.com', 'password': '1111'},
//     {'name': 'Jeong Joo Yeong', 'email': 'joo@yeong.com', 'password': '2222'},
//     {'name': 'Jeong Yeong Jun', 'email': 'yeong@jun.com', 'password': '3333'},
//   ]);
