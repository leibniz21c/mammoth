import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/chart/line_chart_frame.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/ui/page_title.dart';
import 'package:provider/provider.dart';

class Resources extends StatelessWidget {
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
                  child: LineChartFrame(
                      this
                          .influx
                          .yarnClusterMetrics
                          .sublist(this.influx.yarnClusterMetrics.length - 10)
                          .map((e) => e[YarnClusterMetricsOrder
                              .allocatedVirtualCores.index])
                          .toList(),
                      this.influx.yarnClusterMetrics.last[
                          YarnClusterMetricsOrder.totalVirtualCores.index],
                      'vCores'),
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
                  child: LineChartFrame(
                      this
                          .influx
                          .hdfsInfo
                          .sublist(this.influx.hdfsInfo.length - 10)
                          .map((e) => e[HdfsInfoOrder.used.index] / 1073741824)
                          .toList(),
                      (this.influx.hdfsInfo.last[HdfsInfoOrder.size.index] /
                              1073741824)
                          .toInt(),
                      'memory'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
