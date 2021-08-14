import 'package:flutter/material.dart';
import 'package:mammoth/src/mongo/mongo.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

class MongoProvider extends ChangeNotifier {
  var _mongo;
  Text createMsg = Text("");

  MongoProvider() {
    _mongo = Mongo();
  }

  Future<void> open() async => await _mongo.open();
  Future<void> close() async => await _mongo.close();
  Future<void> showAll() async => await _mongo.showAll();
  Future<void> createAccount(String email, String name, String pw) async {
    if (await _mongo.createAccount(email, name, pw)) {
      createMsg = Text(
        'Your account has created!',
        style: TextStyle(color: Colors.blue),
      );
    } else {
      createMsg = Text(
        'This Email already exists',
        style: TextStyle(color: Colors.red),
      );
    }
    notifyListeners();
  }

  Future<void> login(String email, String pw) async => _mongo.login(email, pw);
}
