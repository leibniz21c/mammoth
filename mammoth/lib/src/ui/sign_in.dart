import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/ui/button_frame.dart';
import 'package:mammoth/src/ui/sign_in_detail.dart';
import 'package:mammoth/src/ui/sign_up_detail.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  SignIn({
    Key? key,
  }) : super(key: key);
  Future<void> openDB(BuildContext context) async {
    await Provider.of<MongoProvider>(context, listen: false).open();
  }

  @override
  Widget build(BuildContext context) {
    openDB(context);
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(startFraction: 0.43, endFraction: 0.43),
            Pin(startFraction: 0.3, endFraction: 0.6),
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
            Pin(startFraction: 0.2, endFraction: 0.2),
            Pin(startFraction: 0.5, endFraction: 1 - 0.58),
            child:
                // Adobe XD layer: 'button_signin' (component)
                GestureDetector(
              child: ButtonFrame('Sign In'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInDetail()));
              },
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.2, endFraction: 0.2),
            Pin(startFraction: 0.6, endFraction: 1 - 0.68),
            child:
                // Adobe XD layer: 'button_signin' (component)
                GestureDetector(
              child: ButtonFrame('Sign Up'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpDetail()));
              },
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.2, endFraction: 0.2),
            Pin(startFraction: 0.7, endFraction: 1 - 0.74),
            child:
                // Adobe XD layer: 'text_description' (text)
                Center(
              child: Text.rich(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
