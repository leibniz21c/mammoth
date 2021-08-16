import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/ui/page_title.dart';
import 'package:provider/provider.dart';

class Resources extends StatelessWidget {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  Resources({
    Key? key,
  }) : super(key: key);

  var influx;
  @override
  Widget build(BuildContext context) {
    this.influx = Provider.of<InfluxProvider>(context);
    return Stack(
      children: [
        PageTitle('Resources'),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.17, endFraction: 0.45),
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
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 18.0, left: 12.0, top: 24, bottom: 12),
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
                                    if (value.toInt() % 2 == 0) {
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
                                      color: const Color(0xff37434d),
                                      width: 1)),
                              minY: 0,
                              maxY: this
                                  .influx
                                  .yarnClusterMetrics
                                  .last[YarnClusterMetricsOrder
                                      .totalVirtualCores.index]
                                  .toDouble(),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: this
                                      .influx
                                      .yarnClusterMetrics
                                      .sublist(this
                                              .influx
                                              .yarnClusterMetrics
                                              .length -
                                          10)
                                      .map((e) => e[YarnClusterMetricsOrder
                                          .allocatedVirtualCores.index])
                                      .toList()
                                      .asMap()
                                      .entries
                                      .map<FlSpot>((e) => FlSpot(
                                          e.key.toDouble(),
                                          double.parse(
                                              e.value.toStringAsFixed(2))))
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.57, endFraction: 0.05),
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
                            if (value.toInt() % 2 == 0) {
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
                      maxY: this
                              .influx
                              .yarnClusterMetrics
                              .last[YarnClusterMetricsOrder.totalMB.index] /
                          1024,
                      lineBarsData: [
                        LineChartBarData(
                          spots: this
                              .influx
                              .yarnClusterMetrics
                              .sublist(
                                  this.influx.yarnClusterMetrics.length - 10)
                              .map((e) =>
                                  e[YarnClusterMetricsOrder.allocatedMB.index] /
                                  1024)
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
      ],
    );
  }
}
