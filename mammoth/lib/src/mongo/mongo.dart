import 'package:mammoth/conf.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:dbcrypt/dbcrypt.dart';

class Mongo {
  var _db;
  var _coll;

  Mongo() {
    _db = Db(CONF['MONGO_HOST']!);
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
        "name": name,
        "email": email,
        "password": hashed,
        "ipv4": "0.0.0.0",
        "port": {
          "50010": 50010,
          "50020": 50020,
          "50070": 50070,
          "50075": 50075,
          "50090": 50090,
          "8020": 8020,
          "9000": 9000,
          "10020": 10020,
          "19888": 19888,
          "8030": 8030,
          "8031": 8031,
          "8032": 8032,
          "8033": 8033,
          "8040": 8040,
          "8042": 8042,
          "8088": 8088
        },
        "joinDate": new DateTime.now().toIso8601String(),
      });
      return true;
    } else {
      return false;
    }
  }

  // }

  Future<dynamic> getUser(String email) async {
    var user = await this._coll.find({'email': email}).toList();
    return user;
  }

  Future<dynamic> update(String email, String field, dynamic value) async {
    var res = await this
        ._coll
        .updateOne(where.eq('email', email), modify.set(field, value));
    return res;
  }
}
