import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class HomeDisconnected extends StatelessWidget {
  HomeDisconnected({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 229.0, middle: 0.6566),
            Pin(size: 229.0, middle: 0.4193),
            child:
                // Adobe XD layer: 'icon_disconnected' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      const AssetImage('assets/images/icon_disconnected.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 150.0, middle: 0.643),
            Pin(size: 29.0, middle: 0.5453),
            child:
                // Adobe XD layer: 'text_disconnected' (text)
                Text(
              'Disconneted',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 25,
                color: const Color(0xff696969),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
