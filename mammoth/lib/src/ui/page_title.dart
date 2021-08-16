import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';

class PageTitle extends StatelessWidget {
  String _text;
  PageTitle(this._text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Pinned.fromPins(
      Pin(startFraction: 0.03, endFraction: 0.0),
      Pin(startFraction: 0.1, endFraction: 0.85),
      child:
      // Adobe XD layer: 'text_overview' (text)
      Text(
        _text,
        style: TextStyle(
          fontFamily: 'HelveticaNeue',
          fontSize: 20,
          color: const Color(0xfff4f4f4),
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}