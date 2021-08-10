import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import 'settings.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 249.5, start: -0.5),
            Pin(start: -0.5, end: 0.0),
            child:
                // Adobe XD layer: 'container_left' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.5, end: 1.0),
                  Pin(start: 0.0, end: 0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff121212),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 66.0, end: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.5, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ui.ImageFilter.blur(
                                sigmaX: 24.34, sigmaY: 24.34),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.5),
                        Pin(size: 1.0, start: 0.8),
                        child: SvgPicture.string(
                          _svg_o6ehry,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
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
          ),
          Pinned.fromPins(
            Pin(start: 249.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'container_right' (shape)
                Container(
              decoration: BoxDecoration(
                color: const Color(0xff121212),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 169.0, middle: 0.3205),
            Pin(size: 24.0, start: 72.0),
            child:
                // Adobe XD layer: 'text_overview' (text)
                Text(
              'Hadoop Overview',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 20,
                color: const Color(0xfff4f4f4),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 725.0, end: 25.0),
            Pin(size: 329.0, middle: 0.2688),
            child:
                // Adobe XD layer: 'container_nodes' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xff202023),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, middle: 0.3074),
            Pin(size: 21.0, middle: 0.1874),
            child:
                // Adobe XD layer: 'text_nodes' (text)
                Text(
              'Nodes',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 18,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 736.0, end: 14.0),
            Pin(size: 282.0, end: 19.0),
            child:
                // Adobe XD layer: 'grid_bottom' (grid)
                Scrollbar(
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 2,
                  runSpacing: 2,
                  children: [
                    {
                      'text': 'Disks',
                    },
                    {
                      'text': 'CPU/RAM',
                    },
                    {
                      'text': 'Applications',
                    }
                  ].map((itemData) {
                    final text = itemData['text']!;
                    return SizedBox(
                      width: 228.0,
                      height: 264.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11.0),
                                color: const Color(0xff202023),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 39.0, start: 29.0),
                            Pin(size: 21.0, start: 23.0),
                            child: Text(
                              text,
                              style: TextStyle(
                                fontFamily: 'HelveticaNeue',
                                fontSize: 18,
                                color: const Color(0xfff4f4f4),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 38.0, start: 15.0),
            Pin(size: 38.0, end: 19.0),
            child:
                // Adobe XD layer: 'image_profile' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/temp_userprofile.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 0.5, color: const Color(0xff2f2f2f)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 58.0, start: 62.0),
            Pin(size: 16.0, end: 41.0),
            child:
                // Adobe XD layer: 'text_id' (text)
                Text(
              'yejin9989',
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
            Pin(size: 57.0, start: 62.0),
            Pin(size: 15.0, end: 25.0),
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
            Pin(size: 194.0, start: 24.0),
            Pin(size: 29.0, start: 69.0),
            child:
                // Adobe XD layer: 'text_title' (text)
                Text(
              'Hadoop Monitor',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 25,
                color: const Color(0xfff4f4f4),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 41.0, start: 15.0),
            Pin(size: 41.0, start: 28.0),
            child:
                // Adobe XD layer: 'icon_list' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon_list.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, start: 24.0),
            Pin(size: 23.0, start: 123.0),
            child:
                // Adobe XD layer: 'icon_yarn' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon_yarn.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 31.0, start: 59.0),
            Pin(size: 20.0, start: 126.0),
            child:
                // Adobe XD layer: 'text_yarn' (text)
                Text(
              'Yarn',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 17,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 41.0, start: 60.0),
            Pin(size: 20.0, middle: 0.2366),
            child:
                // Adobe XD layer: 'text_hdfs' (text)
                Text(
              'HDFS',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 17,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, start: 16.0),
            Pin(size: 40.0, middle: 0.2294),
            child:
                // Adobe XD layer: 'icon_hdfs' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon_hdfs.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, start: 15.0),
            Pin(size: 42.0, middle: 0.2989),
            child:
                // Adobe XD layer: 'icon_mapreduce' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/icon_mapreduce.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 89.0, start: 60.0),
            Pin(size: 20.0, middle: 0.3048),
            child:
                // Adobe XD layer: 'text_mapreduce' (text)
                Text(
              'Map Reduce',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 17,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 31.0, middle: 0.2064),
            Pin(size: 31.0, end: 28.0),
            child:
                // Adobe XD layer: 'icon_setting' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Settings(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/icon_setting.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 185.0, middle: 0.3576),
            Pin(size: 159.0, end: 59.0),
            child:
                // Adobe XD layer: 'temp_disks' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/temp_disks.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 181.0, middle: 0.6501),
            Pin(size: 159.0, end: 59.0),
            child:
                // Adobe XD layer: 'temp_resources' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/temp_resources.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 181.0, end: 47.0),
            Pin(size: 159.0, end: 59.0),
            child:
                // Adobe XD layer: 'temp_app' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/temp_app.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 677.0, end: 47.0),
            Pin(size: 250.0, middle: 0.3378),
            child:
                // Adobe XD layer: 'temp_nodes' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/temp_nodes.png'),
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

const String _svg_o6ehry =
    '<svg viewBox="-0.5 711.5 249.0 1.0" ><path transform="translate(-0.5, 711.5)" d="M 0 0 L 249 0" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_am513k =
    '<svg viewBox="248.5 0.5 1.0 768.0" ><path transform="translate(248.5, 0.5)" d="M 0 0 L 0 768" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
