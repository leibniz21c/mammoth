import 'package:flutter/material.dart';

class ButtonFrame extends StatelessWidget {
  String _text;
  ButtonFrame(this._text);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Center(
            child: Text(
              this._text,
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 20,
                color: const Color(0xff121212),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xffffffff),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
      ],
    );
  }
}
