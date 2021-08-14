import 'package:flutter/material.dart';
import 'package:mammoth/src/mongo/mongo.dart';
import 'package:dbcrypt/dbcrypt.dart';

class MongoProvider extends ChangeNotifier {
  var _mongo;
  var _user;
  Text createMsg = Text("");
  Text loginMsg = Text("");

  MongoProvider() {
    _mongo = Mongo();
  }

  Future<void> open() async => await _mongo.open();
  Future<void> close() async => await _mongo.close();
  Future<void> showAll() async => await _mongo.showAll();
  dynamic getUser() => this._user;
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

  Future<bool> login(String email, String pw) async {
    this._user = await _mongo.login(email, pw);
    if (this._user.isEmpty) {
      loginMsg = Text(
        'Login Failed!',
        style: TextStyle(color: Colors.red),
      );
      notifyListeners();
      return false;
    } else if (new DBCrypt().checkpw(pw, this._user.first['password'])) {
      return true;
    } else {
      loginMsg = Text(
        'Login Failed!',
        style: TextStyle(color: Colors.red),
      );
      notifyListeners();
      return false;
    }
  }

  Future<dynamic> update(String email, String field, dynamic value) async {
    var res = await this._mongo.update(email, field, value);
    return res;
  }
}
