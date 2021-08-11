import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/chart/line_chart_sample.dart';
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
            Pin(startFraction: 0.0, endFraction: 0.75),
            Pin(start: -0.5, end: 0.0),
            child:
                // Adobe XD layer: 'container_left' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(startFraction: 0.07, endFraction: 0.07),
                  Pin(startFraction: 0.1, endFraction: 0.85),
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
                  Pin(startFraction: 0.05, endFraction: 0.8),
                  Pin(startFraction: 0.05, endFraction: 0.9),
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
                  Pin(size: 23.0, startFraction: 0.07),
                  Pin(size: 23.0, startFraction: 0.17),
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
                  Pin(startFraction: 0.2, endFraction: 0.07),
                  Pin(startFraction: 0.17, endFraction: 0.78),
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
                  Pin(startFraction: 0.2, endFraction: 0.07),
                  Pin(startFraction: 0.23, endFraction: 0.72),
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
                  Pin(size: 40.0, startFraction: 0.04),
                  Pin(size: 40.0, startFraction: 0.22),
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
                  Pin(size: 42.0, startFraction: 0.04),
                  Pin(size: 42.0, startFraction: 0.275),
                  child:
                      // Adobe XD layer: 'icon_mapreduce' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(
                            'assets/images/icon_mapreduce.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.2, endFraction: 0.07),
                  Pin(startFraction: 0.29, endFraction: 0.67),
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
                  // profile
                  Pin(start: 0.0, end: 0.0),
                  Pin(startFraction: 0.91, end: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 38.0, start: 15.0),
                        Pin(size: 38.0, end: 19.0),
                        child:
                            // Adobe XD layer: 'image_profile' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/temp_userprofile.jpg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                                width: 0.5, color: const Color(0xff2f2f2f)),
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
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.27, endFraction: 0.0),
            Pin(startFraction: 0.1, endFraction: 0.85),
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
            Pin(startFraction: 0.27, endFraction: 0.02),
            Pin(startFraction: 0.15, endFraction: 0.41),
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
            Pin(startFraction: 0.29, endFraction: 0.04),
            Pin(startFraction: 0.23, endFraction: 0.43),
            child:
                // Adobe XD layer: 'temp_nodes' (shape)
                LineChartSample2(),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.29, endFraction: 0.02),
            Pin(startFraction: 0.18, endFraction: 0.41),
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
            Pin(startFraction: 0.27, endFraction: 0.5),
            Pin(startFraction: 0.61, endFraction: 0.03),
            child:
                // Adobe XD layer: 'container_disks' (shape)
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
            Pin(startFraction: 0.29, endFraction: 0.52),
            Pin(startFraction: 0.7, endFraction: 0.05),
            child:
                // Adobe XD layer: 'temp_disks' (shape)
                LineChartSample2(),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.29, endFraction: 0.5),
            Pin(startFraction: 0.64, endFraction: 0.03),
            child:
                // Adobe XD layer: 'text_disks' (text)
                Text(
              'Disks',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 18,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.51, endFraction: 0.26),
            Pin(startFraction: 0.61, endFraction: 0.03),
            child:
                // Adobe XD layer: 'container_cpu/ram' (shape)
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
            Pin(startFraction: 0.53, endFraction: 0.28),
            Pin(startFraction: 0.7, endFraction: 0.05),
            child:
                // Adobe XD layer: 'temp_resources' (shape)
                LineChartSample2(),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.53, endFraction: 0.26),
            Pin(startFraction: 0.64, endFraction: 0.03),
            child:
                // Adobe XD layer: 'text_cpu/ram' (text)
                Text(
              'CPU/RAM',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 18,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.75, endFraction: 0.02),
            Pin(startFraction: 0.61, endFraction: 0.03),
            child:
                // Adobe XD layer: 'container_applications' (shape)
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
            Pin(startFraction: 0.77, endFraction: 0.04),
            Pin(startFraction: 0.7, endFraction: 0.05),
            child:
                // Adobe XD layer: 'temp_app' (shape)
                LineChartSample2(),
          ),
          Pinned.fromPins(
            Pin(startFraction: 0.77, endFraction: 0.02),
            Pin(startFraction: 0.64, endFraction: 0.03),
            child:
                // Adobe XD layer: 'text_applications' (text)
                Text(
              'Applications',
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 18,
                color: const Color(0xfff4f4f4),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          // Pinned.fromPins(
          //   Pin(startFraction: 0.29, endFraction: 0.02),
          //   Pin(startFraction: 0.61, endFraction: 0.1),
          //   child:
          //       // Adobe XD layer: 'grid_bottom' (grid)
          //       Scrollbar(
          //     child: SingleChildScrollView(
          //       child: Wrap(
          //         alignment: WrapAlignment.center,
          //         spacing: 2,
          //         runSpacing: 2,
          //         children: [
          //           {
          //             'text': 'Disks',
          //           },
          //           {
          //             'text': 'CPU/RAM',
          //           },
          //           {
          //             'text': 'Applications',
          //           }
          //         ].map((itemData) {
          //           final text = itemData['text']!;
          //           return SizedBox(
          //             width: 228.0,
          //             height: 264.0,
          //             child: Stack(
          //               children: <Widget>[
          //                 Pinned.fromPins(
          //                   Pin(start: 0.0, end: 0.0),
          //                   Pin(start: 0.0, end: 0.0),
          //                   child: Container(
          //                     decoration: BoxDecoration(
          //                       borderRadius: BorderRadius.circular(11.0),
          //                       color: const Color(0xff202023),
          //                       boxShadow: [
          //                         BoxShadow(
          //                           color: const Color(0xff000000),
          //                           offset: Offset(0, 3),
          //                           blurRadius: 6,
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //                 Pinned.fromPins(
          //                   Pin(size: 39.0, start: 29.0),
          //                   Pin(size: 21.0, start: 23.0),
          //                   child: Text(
          //                     text,
          //                     style: TextStyle(
          //                       fontFamily: 'HelveticaNeue',
          //                       fontSize: 18,
          //                       color: const Color(0xfff4f4f4),
          //                     ),
          //                     textAlign: TextAlign.left,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           );
          //         }).toList(),
          //       ),
          //     ),
          //   ),
          // ),

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
        ],
      ),
    );
  }
}

const String _svg_o6ehry =
    '<svg viewBox="-0.5 711.5 249.0 1.0" ><path transform="translate(-0.5, 711.5)" d="M 0 0 L 249 0" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_am513k =
    '<svg viewBox="248.5 0.5 1.0 768.0" ><path transform="translate(248.5, 0.5)" d="M 0 0 L 0 768" fill="none" stroke="#343434" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
