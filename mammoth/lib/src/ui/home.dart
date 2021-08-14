import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/ui/main_screen.dart';
import 'package:mammoth/src/ui/overview.dart';
import 'package:mammoth/src/ui/sidebar.dart';

class Home extends StatelessWidget {
  dynamic _mainScreen = OverView();
  Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Sidebar(),
          Pinned.fromPins(
            Pin(startFraction: 0.2, endFraction: 0.0),
            Pin(startFraction: 0.0, endFraction: 0.0),
            child: MainScreen(),
          ),
        ],
      ),
    );
  }
}
