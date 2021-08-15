import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartFrame extends StatefulWidget {
  List _data;
  int _maxY;
  String _type;
  LineChartFrame(this._data, this._maxY, this._type);
  @override
  _LineChartFrameState createState() =>
      _LineChartFrameState(this._data, this._maxY, this._type);
}

class _LineChartFrameState extends State<LineChartFrame> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  List _data;
  int _maxY;
  String _type;
  _LineChartFrameState(this._data, this._maxY, this._type);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
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
            switch (this._type) {
              case 'vCores':
                if (value.toInt() % 2 == 0) {
                  return value.toInt().toString();
                } else {
                  return '';
                }
              case 'memory':
                if (value.toInt() % 200 == 0) {
                  return value.toInt().toString();
                } else {
                  return '';
                }
              default:
                return '';
            }
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minY: 0,
      maxY: this._maxY.toDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: this
              ._data
              .asMap()
              .entries
              .map((e) => FlSpot(
                  e.key.toDouble(), double.parse(e.value.toStringAsFixed(2))))
              .toList(),
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}
