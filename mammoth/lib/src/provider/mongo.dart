import 'package:mongo_dart/mongo_dart.dart';
import 'dart:io';
import 'package:dbcrypt/dbcrypt.dart';

Future<void> main(List<String> arguments) async {
  var db =
      Db("mongodb://keanu:keanu123!@76a85.pub-vpc.mg.naverncp.com:17017/admin");
  await db.open();

  var coll = db.collection('find');

  await showAll(coll);
  // await login(coll);
  // await createAccount(coll);

  await db.close();
}

Future<void> showAll(DbCollection coll) async {
  await coll.find().forEach((v) => print(v));
}

Future<void> initDB(DbCollection coll) async {
  await coll.insertMany([
    {'name': 'Yang Hee Sung', 'email': 'hee@sung.com', 'passward': '1111'},
    {'name': 'Jeong Joo Yeong', 'email': 'joo@yeong.com', 'passward': '2222'},
    {'name': 'Jeong Yeong Jun', 'email': 'yeong@jun.com', 'passward': '3333'},
  ]);
}

Future<void> createAccount(DbCollection coll) async {
  // 이메일 입력 후 겹치는 이메일 없으면 이름, pw 입력하고 가입
  print('Input your email: ');
  String? email = stdin.readLineSync();

  var user = await coll.find({'email': email}).toList(); // 입력한 email 있는지 조회

  if (user.isEmpty) {
    print('Input your name:');
    String? name = stdin.readLineSync();
    print('Input your pw:');
    String? pw = stdin.readLineSync() as String;
    String hashed = new DBCrypt().hashpw(pw, new DBCrypt().gensalt());
    await coll.insertOne({'name': name, 'email': email, 'passward': hashed});
    print('Your account has been created!');
  } else {
    print('This Email already exists');
  }
}

Future<void> login(DbCollection coll) async {
  print('Enter your email: ');
  String? email = stdin.readLineSync();
  print('Enter your passward: ');
  String? pw = stdin.readLineSync() as String;
  String hashed = new DBCrypt().hashpw(pw, new DBCrypt().gensalt());
  var user = await coll.find({'email': email, 'passward': hashed}).toList();
  if (user.isEmpty) {
    print('Login failed');
  } else {
    print('Welcome, ${user.first['name']}');
  }
}
