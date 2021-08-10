import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'button_signin.dart';

class SignIn extends StatelessWidget {
  SignIn({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 140.0, middle: 0.5),
            Pin(size: 100.0, middle: 0.5),
            child:
                // Adobe XD layer: 'logo_mammoth' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_mammoth.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 212.0, end: 212.0),
            Pin(size: 60.0, end: 84.0),
            child:
                // Adobe XD layer: 'button_signin' (component)
                ButtonSignin(),
          ),
          Pinned.fromPins(
            Pin(size: 63.0, middle: 0.5016),
            Pin(size: 23.0, end: 102.0),
            child:
                // Adobe XD layer: 'text_signin' (text)
                Text(
              'Sign in',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 20,
                color: const Color(0xff121212),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 358.0, middle: 0.467),
            Pin(size: 17.0, end: 57.0),
            child:
                // Adobe XD layer: 'text_description' (text)
                Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 15,
                  color: const Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'By signing in you accept our ',
                  ),
                  TextSpan(
                    text: 'Terms of us',
                    style: TextStyle(
                      color: const Color(0xff3482ff),
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                  ),
                  TextSpan(
                    text: 'Privacy policy.',
                    style: TextStyle(
                      color: const Color(0xff3482ff),
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
