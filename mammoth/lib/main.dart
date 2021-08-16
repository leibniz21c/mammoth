import 'package:flutter/material.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/provider/screen_provider.dart';
import 'package:mammoth/src/ui/sign_in.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => MongoProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => ScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => InfluxProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Multi Provider wrapping
      home: SignIn(),
    );
  }
}
