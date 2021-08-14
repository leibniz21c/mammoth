import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/chart/line_chart_sample.dart';
import 'package:mammoth/src/ui/page_title.dart';

class Resources extends StatelessWidget {
  Resources({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageTitle('Resources'),
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
                    'vCores',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 18,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.025, endFraction: 0.025),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: LineChartSample2(),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.5, endFraction: 0.2),
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
                    'Memory',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 18,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.025, endFraction: 0.025),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: LineChartSample2(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
