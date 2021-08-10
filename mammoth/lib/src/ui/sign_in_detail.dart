import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'sign_in.dart';
import 'package:adobe_xd/page_link.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInDetail extends StatelessWidget {
  SignInDetail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
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
          Pinned.fromPins(
            Pin(start: 202.0, end: 202.0),
            Pin(start: 82.0, end: 86.0),
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
            Pin(size: 37.0, middle: 0.5005),
            Pin(size: 28.0, start: 95.0),
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
            Pin(size: 48.0, middle: 0.2285),
            Pin(size: 20.0, start: 99.0),
            child:
                // Adobe XD layer: 'button_cancel' (text)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SignIn(),
                ),
              ],
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 17,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 620.0, middle: 0.5025),
            Pin(size: 105.0, middle: 0.27),
            child:
                // Adobe XD layer: 'edittext_id' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xff383838),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 203.0, end: 203.0),
            Pin(size: 1.0, middle: 0.2334),
            child:
                // Adobe XD layer: 'line1' (shape)
                SvgPicture.string(
              _svg_pa116h,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 203.0, end: 203.0),
            Pin(size: 1.0, middle: 0.369),
            child:
                // Adobe XD layer: 'line2' (shape)
                SvgPicture.string(
              _svg_p37uj7,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 221.0, end: 221.0),
            Pin(size: 1.0, middle: 0.3012),
            child:
                // Adobe XD layer: 'inner_line' (shape)
                SvgPicture.string(
              _svg_g5wier,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 94.0, middle: 0.5),
            Pin(size: 20.0, middle: 0.2607),
            child:
                // Adobe XD layer: 'text_email' (text)
                Text(
              'Email address',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 17,
                color: const Color(0xff818181),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, middle: 0.5),
            Pin(size: 20.0, middle: 0.3302),
            child:
                // Adobe XD layer: 'text_password' (text)
                Text(
              'Password',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 17,
                color: const Color(0xff818181),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 222.0, end: 222.0),
            Pin(size: 55.0, middle: 0.4404),
            child:
                // Adobe XD layer: 'button_signin' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xfff5f5f5),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, middle: 0.4969),
            Pin(size: 19.0, middle: 0.4446),
            child:
                // Adobe XD layer: 'text_signin' (text)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
                ),
              ],
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontSize: 16,
                  color: const Color(0xff121212),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 110.0, middle: 0.5),
            Pin(size: 15.0, middle: 0.5272),
            child:
                // Adobe XD layer: 'button_forgotpasswo…' (text)
                Text(
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
          Pinned.fromPins(
            Pin(start: 222.0, end: 222.0),
            Pin(size: 55.0, middle: 0.6213),
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
            Pin(start: 222.0, end: 222.0),
            Pin(size: 55.0, middle: 0.7209),
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
            Pin(start: 222.0, end: 222.0),
            Pin(size: 55.0, middle: 0.8205),
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
            Pin(size: 134.0, middle: 0.5),
            Pin(size: 19.0, middle: 0.6168),
            child:
                // Adobe XD layer: 'text_apple' (text)
                Text(
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
          Pinned.fromPins(
            Pin(size: 144.0, middle: 0.5),
            Pin(size: 19.0, middle: 0.7116),
            child:
                // Adobe XD layer: 'text_google' (text)
                Text(
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
          Pinned.fromPins(
            Pin(size: 164.0, middle: 0.5),
            Pin(size: 19.0, middle: 0.8064),
            child:
                // Adobe XD layer: 'text_facebook' (text)
                Text(
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
          Pinned.fromPins(
            Pin(size: 18.0, middle: 0.2455),
            Pin(size: 23.0, middle: 0.6134),
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
            Pin(size: 22.0, middle: 0.2465),
            Pin(size: 22.0, middle: 0.7091),
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
            Pin(size: 22.0, middle: 0.2465),
            Pin(size: 23.0, middle: 0.804),
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
