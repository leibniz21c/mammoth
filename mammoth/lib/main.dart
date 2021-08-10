import 'package:flutter/material.dart';
import 'package:mammoth/src/provider/temp_provider.dart';
import 'package:mammoth/src/ui/home.dart';
import 'package:mammoth/src/ui/sign_in.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Multi Provider wrapping
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (BuildContext context) => TempProvider()),
        ],
        child: SignIn(),
      ),
    );
  }
}