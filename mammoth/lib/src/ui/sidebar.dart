import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/provider/screen_provider.dart';
import 'package:provider/provider.dart';
import 'settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sidebar extends StatelessWidget {
  String _name = 'User';
  Sidebar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    this._name =
        Provider.of<MongoProvider>(context, listen: false).user.first['name'];
    return Pinned.fromPins(
      Pin(startFraction: 0.0, endFraction: 0.8),
      Pin(start: -0.5, end: 0.0),
      child:
          // Adobe XD layer: 'container_left' (group)
          Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(startFraction: 0.07, endFraction: 0.0),
            Pin(startFraction: 0.1, endFraction: 0.85),
            child:
                // Adobe XD layer: 'text_title' (text)
                Text(
              'Hadoop Monitor',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 21,
                color: const Color(0xfff4f4f4),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.07, endFraction: 0.0),
            Pin(startFraction: 0.17, endFraction: 0.78),
            child:
                // Adobe XD layer: 'text_yarn' (text)
                GestureDetector(
              onTap: () {
                Provider.of<ScreenProvider>(context, listen: false)
                    .changeScreen(Screen.Overview);
              },
              child: Stack(
                children: [
                  Pinned.fromPins(
                    Pin(startFraction: 0.0, endFraction: 0.88),
                    Pin(startFraction: 0.0, endFraction: 0.0),
                    child: Image.asset('assets/images/icon_home.png'),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.15, endFraction: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 17,
                          color: const Color(0xfff4f4f4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.07, endFraction: 0.0),
            Pin(startFraction: 0.23, endFraction: 0.72),
            child:
                // Adobe XD layer: 'text_hdfs' (text)
                GestureDetector(
              onTap: () {
                Provider.of<ScreenProvider>(context, listen: false)
                    .changeScreen(Screen.Resources);
              },
              child: Stack(
                children: [
                  Pinned.fromPins(
                    Pin(startFraction: 0.0, endFraction: 0.88),
                    Pin(startFraction: 0.0, endFraction: 0.0),
                    child: Image.asset('assets/images/icon_resource.png'),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.15, endFraction: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Resources',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 17,
                          color: const Color(0xfff4f4f4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.07, endFraction: 0.0),
            Pin(startFraction: 0.29, endFraction: 0.67),
            child:
                // Adobe XD layer: 'text_mapreduce' (text)
                GestureDetector(
              onTap: () {
                Provider.of<ScreenProvider>(context, listen: false)
                    .changeScreen(Screen.HDFS);
              },
              child: Stack(
                children: [
                  Pinned.fromPins(
                    Pin(startFraction: 0.0, endFraction: 0.88),
                    Pin(startFraction: 0.0, endFraction: 0.0),
                    child: Image.asset('assets/images/icon_hdfs.png'),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.15, endFraction: 0.0),
                    Pin(startFraction: 0.0, endFraction: 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'HDFS',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 17,
                          color: const Color(0xfff4f4f4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(startFraction: 0.07, endFraction: 0.0),
            Pin(startFraction: 0.35, endFraction: 0.61),
            child:
                // Adobe XD layer: 'text_mapreduce' (text)
                GestureDetector(
              onTap: () {
                Provider.of<ScreenProvider>(context, listen: false)
                    .changeScreen(Screen.Applications);
              },
              child: Stack(
                children: [
                  Pinned.fromPins(
                    Pin(startFraction: 0.0, endFraction: 0.88),
                    Pin(startFraction: 0.0, endFraction: 0.0),
                    child: Image.asset('assets/images/icon_application.png'),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.15, endFraction: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Applications',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 17,
                          color: const Color(0xfff4f4f4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Profile Section
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(startFraction: 0.91, end: 0.5),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 38.0, startFraction: 0.03),
                  Pin(size: 38.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'image_profile' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/icon_user.png'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                          width: 0.5, color: const Color(0xff2f2f2f)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.25, endFraction: 0),
                  Pin(startFraction: 0.2, endFraction: 0),
                  child:
                      // Adobe XD layer: 'text_id' (text)
                      Text(
                    this._name,
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 13,
                      color: const Color(0xfff4f4f4),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.25, endFraction: 0),
                  Pin(startFraction: 0.5, endFraction: 0),
                  child:
                      // Adobe XD layer: 'text_viewprofile' (text)
                      Text(
                    'View profile',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 13,
                      color: const Color(0xffa5a5a5),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: ClipRect(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  // Profile line
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, start: 0.0),
                  child: SvgPicture.string(
                    _svg_o6ehry,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 31.0, endFraction: 0.02),
                  Pin(size: 31.0, startFraction: 0.02),
                  child:
                      // Adobe XD layer: 'icon_setting' (shape)
                      GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(
                              'assets/images/icon_setting.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            // Sidebar vertical line
            Pin(size: 1.0, end: -0.5),
            Pin(start: 0.5, end: 0.0),
            child: SvgPicture.string(
              _svg_am513k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_o6ehry =
    '<svg viewBox="-0.5 711.5 249.0 1.0" ><path transform="translate(-0.5, 711.5)" d="M 0 0 L 249 0" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_am513k =
    '<svg viewBox="248.5 0.5 1.0 768.0" ><path transform="translate(248.5, 0.5)" d="M 0 0 L 0 768" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
