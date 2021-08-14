import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/ui/button_frame.dart';
import 'package:mammoth/src/ui/page_title.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final formKey = GlobalKey<FormState>();
  Map _port = {};
  String _ip = '';
  String _email = '';
  var _user;

  Future<void> getInfo(BuildContext context) async {
    this._user = Provider.of<MongoProvider>(context).getUser();
    this._email = this._user.first['email'];
    this._ip = this._user.first['ipv4'];
    this._port = this._user.first['port'];
    print(this._port);
  }

  @override
  Widget build(BuildContext context) {
    getInfo(context);
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: this.formKey,
        child: Stack(
          children: <Widget>[
            PageTitle('Settings'),
            Pinned.fromPins(
              Pin(startFraction: 0.0, endFraction: 0.0),
              Pin(startFraction: 0.15, endFraction: 0.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(startFraction: 0.03, endFraction: 0.03),
                    Pin(startFraction: 0.02, endFraction: 0.9),
                    child:
                        // Adobe XD layer: 'text_ipaddress' (text)
                        Text(
                      'IP address',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 15,
                        color: const Color(0xff9d9d9d),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.03, endFraction: 0.5),
                    Pin(startFraction: 0.08, endFraction: 0.83),
                    child:
                        // Adobe XD layer: 'edittext_ipbox' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0xff2e2e2e),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          initialValue: this._ip,
                          onSaved: (val) {
                            this._ip = val!;
                          },
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 18,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.03, endFraction: 0.03),
                    Pin(startFraction: 0.2, endFraction: 0.7),
                    child:
                        // Adobe XD layer: 'text_ipaddress' (text)
                        Text(
                      'Port',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 15,
                        color: const Color(0xff9d9d9d),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.03, endFraction: 0.03),
                    Pin(startFraction: 0.25, endFraction: 0.7),
                    child:
                        // Adobe XD layer: 'text_ipaddress' (text)
                        Text(
                      'Host',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 15,
                        color: const Color(0xff9d9d9d),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.3, endFraction: 0.03),
                    Pin(startFraction: 0.25, endFraction: 0.7),
                    child:
                        // Adobe XD layer: 'text_ipaddress' (text)
                        Text(
                      'Guest',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 15,
                        color: const Color(0xff9d9d9d),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.03, endFraction: 0.03),
                    Pin(startFraction: 0.33, endFraction: 0.0),
                    child:
                        // Adobe XD layer: 'grid_port' (grid)
                        Scrollbar(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            {
                              'host': this._port["50010"].toString(),
                              'guest': '50010',
                            },
                            {
                              'host': this._port["50020"].toString(),
                              'guest': '50020',
                            },
                            {
                              'host': this._port["50070"].toString(),
                              'guest': '50070',
                            },
                            {
                              'host': this._port["50075"].toString(),
                              'guest': '50075',
                            },
                            {
                              'host': this._port["50090"].toString(),
                              'guest': '50090',
                            },
                            {
                              'host': this._port["8020"].toString(),
                              'guest': '8020',
                            },
                            {
                              'host': this._port["9000"].toString(),
                              'guest': '9000',
                            },
                            {
                              'host': this._port["10020"].toString(),
                              'guest': '10020',
                            },
                            {
                              'host': this._port["19888"].toString(),
                              'guest': '19888',
                            },
                            {
                              'host': this._port["8030"].toString(),
                              'guest': '8030',
                            },
                            {
                              'host': this._port["8031"].toString(),
                              'guest': '8031',
                            },
                            {
                              'host': this._port["8032"].toString(),
                              'guest': '8032',
                            },
                            {
                              'host': this._port["8033"].toString(),
                              'guest': '8033',
                            },
                            {
                              'host': this._port["8040"].toString(),
                              'guest': '8040',
                            },
                            {
                              'host': this._port["8042"].toString(),
                              'guest': '8042',
                            },
                            {
                              'host': this._port["8088"].toString(),
                              'guest': '8088',
                            }
                          ].map((itemData) {
                            final host = itemData['host']!;
                            final guest = itemData['guest']!;
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 50.0,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 85.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'edittext_hostipbox' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(21.0),
                                          color: const Color(0xff2e2e2e),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 50.0, start: 22.0),
                                      Pin(size: 22.0, middle: 0.5),
                                      child:
                                          // Adobe XD layer: 'edittext_hostip' (text)
                                          TextFormField(
                                        initialValue: host,
                                        onSaved: (val) {
                                          this._port[guest] = val;
                                        },
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontSize: 18,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 67.0, end: 0.0),
                                      Pin(size: 24.0, middle: 0.5),
                                      child:
                                          // Adobe XD layer: 'text_guestip' (text)
                                          Text(
                                        ': ' + guest,
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontSize: 20,
                                          color: const Color(0xffb2b2b2),
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.5, endFraction: 0.4),
                    Pin(startFraction: 0.9, endFraction: 0.02),
                    child: GestureDetector(
                      onTap: () async {
                        this.formKey.currentState!.save();
                        await Provider.of<MongoProvider>(context, listen: false)
                            .update(this._email, 'ipv4', this._ip);
                        await Provider.of<MongoProvider>(context, listen: false)
                            .update(this._email, 'port', this._port);

                        Navigator.pop(context);
                      },
                      child: ButtonFrame('Save'),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.63, endFraction: 0.27),
                    Pin(startFraction: 0.9, endFraction: 0.02),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ButtonFrame(
                        'Cancel',
                        buttonColor: Colors.red,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_o6ehry =
    '<svg viewBox="-0.5 711.5 249.0 1.0" ><path transform="translate(-0.5, 711.5)" d="M 0 0 L 249 0" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_am513k =
    '<svg viewBox="248.5 0.5 1.0 768.0" ><path transform="translate(248.5, 0.5)" d="M 0 0 L 0 768" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
