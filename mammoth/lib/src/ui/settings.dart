import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import 'home.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
  Settings({
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
            Pin(size: 768.5, start: -0.5),
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
            Pin(size: 38.0, start: 15.0),
            Pin(size: 38.0, middle: 0.3933),
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
            Pin(size: 16.0, middle: 0.3885),
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
            Pin(size: 15.0, middle: 0.3976),
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
                  image: const AssetImage(''),
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
            Pin(size: 20.0, start: 177.0),
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
            Pin(size: 40.0, start: 167.0),
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
            Pin(size: 42.0, start: 217.0),
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
            Pin(size: 20.0, start: 228.0),
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
            Pin(size: 31.0, middle: 0.3906),
            child:
                // Adobe XD layer: 'icon_setting' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
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
            Pin(size: 723.0, end: 26.0),
            Pin(start: 0.0, end: 0.0),
            child:
                // Adobe XD layer: 'scrollable_right' (group)
                Scrollbar(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 723.0,
                  height: 1704.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 71.0, end: 71.0),
                        child:
                            // Adobe XD layer: 'container_right' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 1.0, end: 15.0),
                              Pin(size: 60.0, end: 241.0),
                              child:
                                  // Adobe XD layer: 'button_manage_accou…' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: const Color(0xff2e2e2e),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 115.0, start: 20.0),
                              Pin(size: 18.0, end: 318.0),
                              child:
                                  // Adobe XD layer: 'text_account_setting' (text)
                                  Text(
                                'Account Setting',
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
                              Pin(size: 79.0, start: 1.0),
                              Pin(size: 24.0, start: 0.0),
                              child:
                                  // Adobe XD layer: 'text_settings' (text)
                                  Text(
                                'Settings',
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
                              Pin(size: 76.0, start: 23.0),
                              Pin(size: 18.0, start: 56.0),
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
                              Pin(start: 1.0, end: 0.0),
                              Pin(size: 50.0, start: 85.0),
                              child:
                                  // Adobe XD layer: 'edittext_ipbox' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21.0),
                                  color: const Color(0xff2e2e2e),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 75.0, start: 23.0),
                              Pin(size: 22.0, start: 99.0),
                              child:
                                  // Adobe XD layer: 'text_ip' (text)
                                  Text(
                                '127.0.0.1',
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
                              Pin(size: 456.0, start: 0.0),
                              Pin(size: 1108.0, start: 229.0),
                              child:
                                  // Adobe XD layer: 'grid_port' (grid)
                                  Scrollbar(
                                child: SingleChildScrollView(
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    spacing: 9,
                                    runSpacing: 20,
                                    children: [
                                      {
                                        'text': '60001',
                                        'text_0': ': 50010',
                                      },
                                      {
                                        'text': '60002',
                                        'text_0': ': 50020',
                                      },
                                      {
                                        'text': '60003',
                                        'text_0': ': 50070',
                                      },
                                      {
                                        'text': '60004',
                                        'text_0': ': 50075',
                                      },
                                      {
                                        'text': '60005',
                                        'text_0': ': 50090',
                                      },
                                      {
                                        'text': '60006',
                                        'text_0': ': 8020',
                                      },
                                      {
                                        'text': '60007',
                                        'text_0': ': 9000',
                                      },
                                      {
                                        'text': '60008',
                                        'text_0': ': 10020',
                                      },
                                      {
                                        'text': '60009',
                                        'text_0': ': 19888',
                                      },
                                      {
                                        'text': '60010',
                                        'text_0': ': 8030',
                                      },
                                      {
                                        'text': '60011',
                                        'text_0': ': 8031',
                                      },
                                      {
                                        'text': '60012',
                                        'text_0': ': 8032',
                                      },
                                      {
                                        'text': '60013',
                                        'text_0': ': 8033',
                                      },
                                      {
                                        'text': '60014',
                                        'text_0': ': 8040',
                                      },
                                      {
                                        'text': '60015',
                                        'text_0': ': 8042',
                                      },
                                      {
                                        'text': '60016',
                                        'text_0': ': 8088',
                                      }
                                    ].map((itemData) {
                                      final text = itemData['text']!;
                                      final text_0 = itemData['text_0']!;
                                      return SizedBox(
                                        width: 448.0,
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
                                                      BorderRadius.circular(
                                                          21.0),
                                                  color:
                                                      const Color(0xff2e2e2e),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 50.0, start: 22.0),
                                              Pin(size: 22.0, middle: 0.5),
                                              child:
                                                  // Adobe XD layer: 'edittext_hostip' (text)
                                                  Text(
                                                text,
                                                style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 18,
                                                  color:
                                                      const Color(0xffffffff),
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
                                                text_0,
                                                style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 20,
                                                  color:
                                                      const Color(0xffb2b2b2),
                                                  fontWeight: FontWeight.w700,
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
                              Pin(size: 34.0, start: 23.0),
                              Pin(size: 18.0, start: 202.0),
                              child:
                                  // Adobe XD layer: 'text_host' (text)
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
                              Pin(size: 42.0, middle: 0.5712),
                              Pin(size: 18.0, start: 202.0),
                              child:
                                  // Adobe XD layer: 'text_guest' (text)
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
                              Pin(size: 30.0, start: 23.0),
                              Pin(size: 18.0, start: 166.0),
                              child:
                                  // Adobe XD layer: 'text_port' (text)
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
                              Pin(size: 147.0, start: 20.0),
                              Pin(size: 21.0, end: 260.0),
                              child:
                                  // Adobe XD layer: 'text_account_setting' (text)
                                  Text(
                                'Manage Accounts',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontSize: 17,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 1.0, end: 15.0),
                              Pin(size: 60.0, end: 86.0),
                              child:
                                  // Adobe XD layer: 'button_save' (shape)
                                  PageLink(
                                links: [
                                  PageLinkInfo(
                                    transition: LinkTransition.Fade,
                                    ease: Curves.easeOut,
                                    duration: 0.3,
                                    pageBuilder: () => Home(),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: const Color(0xff2e2e2e),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 39.0, middle: 0.4883),
                              Pin(size: 21.0, end: 106.0),
                              child:
                                  // Adobe XD layer: 'text_save' (text)
                                  Text(
                                'Save',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontSize: 17,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 9.0, end: 7.0),
                              Pin(size: 60.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'button_cancel' (shape)
                                  PageLink(
                                links: [
                                  PageLinkInfo(
                                    transition: LinkTransition.Fade,
                                    ease: Curves.easeOut,
                                    duration: 0.3,
                                    pageBuilder: () => Home(),
                                  ),
                                ],
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: const Color(0xff2e2e2e),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 56.0, middle: 0.4888),
                              Pin(size: 21.0, end: 19.0),
                              child:
                                  // Adobe XD layer: 'text_cancel' (text)
                                  Text(
                                'Cancel',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontSize: 17,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
