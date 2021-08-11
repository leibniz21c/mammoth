import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

class MongoProvider extends ChangeNotifier {
  var db;
  var coll;
  MongoProvider() {
    db = Db(
        "mongodb://keanu:keanu123!@76a85.pub-vpc.mg.naverncp.com:17017/admin");
    coll = db.collection('find');
  }

  Future<void> open() async {
    await this.db.open();
  }

  Future<void> showAll() async {
    await coll.find().forEach((v) => print(v));
  }
}
