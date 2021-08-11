import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'sign_in_detail.dart';
import 'package:adobe_xd/page_link.dart';

class ButtonSignUp extends StatelessWidget {
  ButtonSignUp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'button_signin' (shape)
              PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.Fade,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => SignInDetail(),
              ),
            ],
            child: Container(
              child: Center(
                child: Text(
                  'Sign Up',
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
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
