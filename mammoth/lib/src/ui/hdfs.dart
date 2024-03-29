import 'package:adobe_xd/adobe_xd.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/provider/screen_provider.dart';
import 'package:mammoth/src/ui/page_title.dart';
import 'package:provider/provider.dart';

class HDFS extends StatelessWidget {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  HDFS({
    Key? key,
  }) : super(key: key);
  var influx;
  @override
  Widget build(BuildContext context) {
    this.influx = Provider.of<InfluxProvider>(context);
    return Stack(
      children: [
        PageTitle('HDFS'),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 1 - 0.51),
          Pin(startFraction: 0.15, endFraction: 0.7),
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
                  child: Text(
                    'Disk Quota',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 18,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.025, endFraction: 0.0),
                  Pin(startFraction: 0.3, endFraction: 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        (this.influx.hdfsInfo.last[HdfsInfoOrder.size.index] /
                                    1073741824)
                                .toStringAsFixed(2) +
                            ' GB',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 18,
                          color: const Color(0xfff4f4f4),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.53, endFraction: 0.03),
          Pin(startFraction: 0.15, endFraction: 0.7),
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
                  child: Text(
                    'Disk Usage',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 18,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.025, endFraction: 0.0),
                  Pin(startFraction: 0.3, endFraction: 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        (this.influx.hdfsInfo.last[HdfsInfoOrder.used.index] /
                                    1073741824)
                                .toStringAsFixed(2) +
                            ' GB',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          fontSize: 18,
                          color: const Color(0xfff4f4f4),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.35, endFraction: 0.25),
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
                  child: Text(
                    'Total',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 18,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.025, endFraction: 0.02),
                  Pin(startFraction: 0.25, endFraction: 0.05),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: const Color(0xff37434d),
                            strokeWidth: 1,
                          );
                        },
                        getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: const Color(0xff37434d),
                            strokeWidth: 1,
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: false,
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          getTextStyles: (value) => const TextStyle(
                            color: Color(0xff67727d),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          getTitles: (value) {
                            if (value.toInt() % 200 == 0) {
                              return value.toInt().toString();
                            } else {
                              return '';
                            }
                          },
                          reservedSize: 28,
                          margin: 12,
                        ),
                      ),
                      borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                              color: const Color(0xff37434d), width: 1)),
                      minY: 0,
                      maxY:
                          (this.influx.hdfsInfo.last[HdfsInfoOrder.size.index] /
                              1073741824),
                      lineBarsData: [
                        LineChartBarData(
                          spots: this
                              .influx
                              .hdfsInfo
                              .sublist(this.influx.hdfsInfo.length - 10)
                              .map((e) =>
                                  e[HdfsInfoOrder.used.index] / 1073741824)
                              .toList()
                              .asMap()
                              .entries
                              .map<FlSpot>((e) => FlSpot(e.key.toDouble(),
                                  double.parse(e.value.toStringAsFixed(2))))
                              .toList(),
                          colors: gradientColors,
                          barWidth: 5,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            colors: gradientColors
                                .map((color) => color.withOpacity(0.3))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.8, endFraction: 0.05),
          child: GestureDetector(
            onTap: () {
              Provider.of<ScreenProvider>(context, listen: false)
                  .changeScreen(Screen.HDFSWeb);
            },
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
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Show in browser',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        color: const Color(0xfff4f4f4),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
