import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:mammoth/src/chart/line_chart_sample.dart';
import 'package:mammoth/src/ui/page_title.dart';

class OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageTitle('Hadoop Overview'),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.15, endFraction: 0.55),
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
            child: Stack(
              children: [
                Pinned.fromPins(
                  Pin(startFraction: 0.025, endFraction: 0.02),
                  Pin(startFraction: 0.05, endFraction: 0.41),
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
                  Pin(startFraction: 0.025, endFraction: 0.825),
                  Pin(startFraction: 0.23, endFraction: 0.23),
                  child: LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.185, endFraction: 0.665),
                  Pin(startFraction: 0.23, endFraction: 0.23),
                  child: LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.345, endFraction: 0.505),
                  Pin(startFraction: 0.23, endFraction: 0.23),
                  child: LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.505, endFraction: 0.345),
                  Pin(startFraction: 0.23, endFraction: 0.23),
                  child: LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.665, endFraction: 0.185),
                  Pin(startFraction: 0.23, endFraction: 0.23),
                  child: LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.825, endFraction: 0.025),
                  Pin(startFraction: 0.23, endFraction: 0.23),
                  child: LineChartSample2(),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.67),
          Pin(startFraction: 0.48, endFraction: 0.1),
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
            child: Stack(
              children: [
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.15, endFraction: 0.05),
                  child:
                      // Adobe XD layer: 'temp_disks' (shape)
                      LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.05, endFraction: 0.03),
                  child:
                      // Adobe XD layer: 'text_disks' (text)
                      Text(
                    'Disks Uses/Quota',
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
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.35, endFraction: 0.35),
          Pin(startFraction: 0.48, endFraction: 0.1),
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
            child: Stack(
              children: [
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.15, endFraction: 0.05),
                  child:
                      // Adobe XD layer: 'temp_disks' (shape)
                      LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.05, endFraction: 0.03),
                  child:
                      // Adobe XD layer: 'text_disks' (text)
                      Text(
                    'vCores/Memory',
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
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.67, endFraction: 0.03),
          Pin(startFraction: 0.48, endFraction: 0.1),
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
            child: Stack(
              children: [
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.15, endFraction: 0.05),
                  child:
                      // Adobe XD layer: 'temp_disks' (shape)
                      LineChartSample2(),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.05, endFraction: 0.03),
                  child:
                      // Adobe XD layer: 'text_disks' (text)
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
