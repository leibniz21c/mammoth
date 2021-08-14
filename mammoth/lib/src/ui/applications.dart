import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:mammoth/src/chart/line_chart_sample.dart';
import 'package:mammoth/src/ui/page_title.dart';

class Applications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        PageTitle('Applications'),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.17, endFraction: 0.55),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
