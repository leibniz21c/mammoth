import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/ui/button_frame.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpDetail extends StatefulWidget {
  @override
  _SignUpDetailState createState() => _SignUpDetailState();
}

class _SignUpDetailState extends State<SignUpDetail> {
  final formkey = GlobalKey<FormState>();

  String _email = '';

  String _pw = '';
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      resizeToAvoidBottomInset: false,
      body: Consumer<MongoProvider>(
        builder: (context, provider, widget) {
          return Form(
            key: this.formkey,
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(startFraction: 0.1, endFraction: 0.1),
                  Pin(size: 30.0, endFraction: 0.05),
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
                            text: 'By signing up you accept our ',
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
                  Pin(startFraction: 0.1, endFraction: 0.15),
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
                  Pin(size: 55.5, middle: 0.5),
                  Pin(size: 42.0, startFraction: 0.12),
                  child:
                      // Adobe XD layer: 'logo_mammoth' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            const AssetImage('assets/images/logo_mammoth.png'),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.18, endFraction: 0.18),
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
                  Pin(startFraction: 0.22, endFraction: 1 - 0.56),
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
                  Pin(startFraction: 0.22, endFraction: 1 - 0.34),
                  child:
                      // Adobe XD layer: 'text_email' (text)
                      Center(
                    child: TextFormField(
                      validator: (val) {
                        if (val!.length < 1) {
                          return 'Input your email';
                        }
                      },
                      onSaved: (val) {
                        this._email = val!;
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
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
                  Pin(startFraction: 0.34, endFraction: 1 - 0.45),
                  child:
                      // Adobe XD layer: 'text_name' (text)
                      Center(
                    child: TextFormField(
                      validator: (val) {
                        if (val!.length < 1) {
                          return 'Input your name';
                        }
                      },
                      onSaved: (val) {
                        this._name = val!;
                      },
                      decoration: InputDecoration(
                        hintText: 'Name',
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
                  Pin(startFraction: 0.45, endFraction: 1 - 0.56),
                  child:
                      // Adobe XD layer: 'text_password' (text)
                      Center(
                    child: TextFormField(
                      validator: (val) {
                        if (val!.length < 1) {
                          return 'Input your password';
                        }
                      },
                      onSaved: (val) {
                        this._pw = val!;
                      },
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
                  Pin(startFraction: 0.17, endFraction: 0.17),
                  Pin(startFraction: 0.56, endFraction: 1 - 0.66),
                  child: Center(
                    child: Provider.of<MongoProvider>(context).createMsg,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.17, endFraction: 0.17),
                  Pin(startFraction: 0.66, endFraction: 1 - 0.76),
                  child: GestureDetector(
                      onTap: () async {
                        if (this.formkey.currentState!.validate()) {
                          this.formkey.currentState!.save();
                          await Provider.of<MongoProvider>(context,
                                  listen: false)
                              .createAccount(this._email, this._name, this._pw);
                          await Provider.of<InfluxProvider>(context,
                                  listen: false)
                              .createDB(this._email);
                        }
                      },
                      child: ButtonFrame('Sign Up')),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

const String _svg_pa116h =
    '<svg viewBox="203.0 179.0 618.0 1.0" ><path transform="translate(203.0, 179.0)" d="M 0 0 L 618 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
    '<svg viewBox="203.0 283.0 618.0 1.0" ><path transform="translate(203.0, 283.0)" d="M 0 0 L 618 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
