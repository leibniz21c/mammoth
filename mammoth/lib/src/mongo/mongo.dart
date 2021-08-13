import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

class Mongo {
  var _db;
  var _coll;
  Mongo() {
    _db = Db(
        "mongodb://keanu:keanu123!@76a85.pub-vpc.mg.naverncp.com:17017/admin");
    _coll = _db.collection('find');
  }

  Future<void> open() async => await _db.open();
  Future<void> close() async => await _db.close();
  Future<void> showAll() async => await _coll.find().forEach((v) => print(v));

  Future<void> createAccount(String email, String name, String pw) async {
    // 이메일 입력 후 겹치는 이메일 없으면 이름, pw 입력하고 가입

    var user = await _coll.find({'email': email}).toList(); // 입력한 email 있는지 조회

    if (user.isEmpty) {
      String hashed = new DBCrypt().hashpw(pw, new DBCrypt().gensalt());
      await _coll.insertOne({'name': name, 'email': email, 'password': hashed});
      print('Your account has been created!');
    } else {
      print('This Email already exists');
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
