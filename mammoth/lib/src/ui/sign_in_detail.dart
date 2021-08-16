import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/ui/button_frame.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInDetail extends StatelessWidget {
  final _emailController = TextEditingController();
  final _pwController = TextEditingController();

  SignInDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(startFraction: 0.1, endFraction: 0.1),
            Pin(size: 30.0, endFraction: 0.02),
            child:
                // Adobe XD layer: 'text_description' (text)
                Center(
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue',
                    fontSize: 12,
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
              ),
            ),
          ),
          // Grey Box
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(startFraction: 0.1, endFraction: 0.1),
            child:
                // Adobe XD layer: 'container_signin' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff292929),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.45, endFraction: 0.45),
            Pin(startFraction: 0.12, endFraction: 0.82),
            child:
                // Adobe XD layer: 'logo_mammoth' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_mammoth.png'),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.18, endFraction: 0.7),
            Pin(startFraction: 0.13, endFraction: 0.12),
            child:
                // Adobe XD layer: 'button_cancel' (text)
                GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue',
                    fontSize: 15,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          // account box
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(startFraction: 0.22, endFraction: 1 - 0.38),
            child:
                // Adobe XD layer: 'edittext_id' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xff383838),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(size: 1.0, startFraction: 0.22),
            child:
                // Adobe XD layer: 'line1' (shape)
                SvgPicture.string(
              _svg_pa116h,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(startFraction: 0.22, endFraction: 1 - 0.3),
            child:
                // Adobe XD layer: 'text_email' (text)
                Center(
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email address',
                  hintStyle: TextStyle(
                    fontFamily: 'HelveticaNeue',
                    fontSize: 17,
                    color: const Color(0xff818181),
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 17,
                  color: const Color(0xff818181),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(size: 1.0, startFraction: 0.3),
            child:
                // Adobe XD layer: 'line2' (shape)
                SvgPicture.string(
              _svg_p37uj7,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(startFraction: 0.3, endFraction: 1 - 0.38),
            child:
                // Adobe XD layer: 'text_password' (text)
                Center(
              child: TextField(
                controller: _pwController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontFamily: 'HelveticaNeue',
                    fontSize: 17,
                    color: const Color(0xff818181),
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 17,
                  color: const Color(0xff818181),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(size: 1.0, startFraction: 0.38),
            child:
                // Adobe XD layer: 'inner_line' (shape)
                SvgPicture.string(
              _svg_g5wier,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(startFraction: 0.38, endFraction: 1 - 0.45),
            child: Center(
              child: Provider.of<MongoProvider>(context).loginMsg,
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.45, endFraction: 0.48),
            child: GestureDetector(
              child: ButtonFrame('Sign In'),
              onTap: () async {
                bool res =
                    await Provider.of<MongoProvider>(context, listen: false)
                        .login(_emailController.text, _pwController.text);
                if (res) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }
              },
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.15, endFraction: 0.15),
            Pin(startFraction: 0.55, endFraction: 0.42),
            child:
                // Adobe XD layer: 'button_forgotpasswo…' (text)
                Center(
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 13,
                  color: const Color(0xff3482ff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.61, endFraction: 0.32),
            child:
                // Adobe XD layer: 'button_apple' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xff3e3e3e),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.61, endFraction: 0.32),
            child:
                // Adobe XD layer: 'text_apple' (text)
                Center(
              child: Text(
                'Sign in with Apple',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 18.0, startFraction: 0.2),
            Pin(size: 23.0, middle: 0.645),
            child:
                // Adobe XD layer: 'logo_apple' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_apple.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.7, endFraction: 0.23),
            child:
                // Adobe XD layer: 'button_google' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xff3e3e3e),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.7, endFraction: 0.23),
            child:
                // Adobe XD layer: 'text_google' (text)
                Center(
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 22.0, startFraction: 0.2),
            Pin(size: 22.0, middle: 0.74),
            child:
                // Adobe XD layer: 'logo_google' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_google.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.79, endFraction: 0.14),
            child:
                // Adobe XD layer: 'button_facebook' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xff3e3e3e),
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.17, endFraction: 0.17),
            Pin(startFraction: 0.79, endFraction: 0.14),
            child:
                // Adobe XD layer: 'text_facebook' (text)
                Center(
              child: Text(
                'Sign in with Facebook',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(size: 22.0, startFraction: 0.2),
            Pin(size: 23.0, middle: 0.84),
            child:
                // Adobe XD layer: 'logo_facebook' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_facebook.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_pa116h =
    '<svg viewBox="203.0 179.0 618.0 1.0" ><path transform="translate(203.0, 179.0)" d="M 0 0 L 618 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p37uj7 =
    '<svg viewBox="203.0 283.0 618.0 1.0" ><path transform="translate(203.0, 283.0)" d="M 0 0 L 618 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g5wier =
    '<svg viewBox="221.0 231.0 582.0 1.0" ><path transform="translate(221.0, 231.0)" d="M 0 0 L 582 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
