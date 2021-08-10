import 'package:flutter/material.dart';

class TempProvider extends ChangeNotifier {
  int _data = 0;
  int get data => _data;
  set data(int data) => _data = data;
}