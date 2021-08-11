import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

class MongoProvider extends ChangeNotifier {
  var _db;
  var _coll;
  MongoProvider() {
    _db = Db(
        "mongodb://keanu:keanu123!@76a85.pub-vpc.mg.naverncp.com:17017/admin");
    _coll = _db.collection('find');
  }

  Future<void> open() async {
    await this._db.open();
  }

  Future<void> showAll() async {
    await _coll.find().forEach((v) => print(v));
  }

  Future<void> createAccount(String email, String pw) async {
    // 이메일 입력 후 겹치는 이메일 없으면 이름, pw 입력하고 가입

    var user = await _coll.find({'email': email}).toList(); // 입력한 email 있는지 조회

    if (user.isEmpty) {
      String hashed = new DBCrypt().hashpw(pw, new DBCrypt().gensalt());
      await _coll
          .insertOne({'name': 'test', 'email': email, 'password': hashed});
      print('Your account has been created!');
    } else {
      print('This Email already exists');
    }
  }
}
