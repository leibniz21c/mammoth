import 'package:flutter/cupertino.dart';

enum Screen { Overview, Resources, HDFS, Applications }

class ScreenProvider extends ChangeNotifier {
  Screen screen = Screen.Overview;

  void changeScreen(Screen newScreen) {
    screen = newScreen;
    notifyListeners();
  }
}
