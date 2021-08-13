import 'package:flutter/material.dart';
import 'package:mammoth/src/mongo/mongo.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

class MongoProvider extends ChangeNotifier {
  var _mongo;
  MongoProvider() {
    _mongo = Mongo();
  }
  Future<void> open() async => await _mongo.open();
  Future<void> close() async => await _mongo.close();
  Future<void> showAll() async => await _mongo.showAll();
  Future<void> createAccount(String email, String name, String pw) async =>
      _mongo.createAccount(email, name, pw);
  Future<void> login(String email, String pw) async => _mongo.login(email, pw);
}
