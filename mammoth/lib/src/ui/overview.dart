import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mammoth/src/chart/line_chart_sample.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/ui/page_title.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class OverView extends StatelessWidget {
  var influx;
  OverView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    this.influx = Provider.of<InfluxProvider>(context);
    return Stack(
      children: [
        PageTitle('Hadoop Overview'),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 0.03),
          Pin(startFraction: 0.17, endFraction: 0.55),
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
                  Pin(startFraction: 0.23, endFraction: 0.11),
                  child: Stack(
                    children: [
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.0, endFraction: 0.15),
                        child: Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: const Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.25, endFraction: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  this
                                      .influx
                                      .yarnClusterMetrics
                                      .last[YarnClusterMetricsOrder
                                          .totalNodes.index]
                                      .toString(),
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
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.185, endFraction: 0.665),
                  Pin(startFraction: 0.23, endFraction: 0.11),
                  child: Stack(
                    children: [
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.0, endFraction: 0.15),
                        child: Text(
                          'Active',
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: const Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.25, endFraction: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  this
                                      .influx
                                      .yarnClusterMetrics
                                      .last[YarnClusterMetricsOrder
                                          .activeNodes.index]
                                      .toString(),
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
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.345, endFraction: 0.505),
                  Pin(startFraction: 0.23, endFraction: 0.11),
                  child: Stack(
                    children: [
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.0, endFraction: 0.15),
                        child: Text(
                          'Lost',
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: const Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.25, endFraction: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  this
                                      .influx
                                      .yarnClusterMetrics
                                      .last[YarnClusterMetricsOrder
                                          .lostNodes.index]
                                      .toString(),
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
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.505, endFraction: 0.345),
                  Pin(startFraction: 0.23, endFraction: 0.11),
                  child: Stack(
                    children: [
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.0, endFraction: 0.15),
                        child: Text(
                          'Unhealthy',
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: const Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.25, endFraction: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  this
                                      .influx
                                      .yarnClusterMetrics
                                      .last[YarnClusterMetricsOrder
                                          .unhealthyNodes.index]
                                      .toString(),
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
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.665, endFraction: 0.185),
                  Pin(startFraction: 0.23, endFraction: 0.11),
                  child: Stack(
                    children: [
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.0, endFraction: 0.8),
                        child: Text(
                          'Decom.',
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: const Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.25, endFraction: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  this
                                      .influx
                                      .yarnClusterMetrics
                                      .last[YarnClusterMetricsOrder
                                          .decommissionedNodes.index]
                                      .toString(),
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
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.825, endFraction: 0.025),
                  Pin(startFraction: 0.23, endFraction: 0.11),
                  child: Stack(
                    children: [
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.0, endFraction: 0.15),
                        child: Text(
                          'Rebooted',
                          style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: const Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(startFraction: 0.0, endFraction: 0.0),
                        Pin(startFraction: 0.25, endFraction: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff232d37),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  this
                                      .influx
                                      .yarnClusterMetrics
                                      .last[YarnClusterMetricsOrder
                                          .rebootedNodes.index]
                                      .toString(),
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
                    ],
                  ),
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
                  Pin(startFraction: 0.15, endFraction: 0.12),
                  child:
                      // Adobe XD layer: 'temp_disks' (shape)
                      Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Color(0xff232d37),
                    ),
                    child: Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(
                          startFraction: 1.0 -
                              this
                                  .influx
                                  .hdfsInfo
                                  .last[HdfsInfoOrder.usePercentage.index],
                          endFraction: 0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                            color: Color(0xff02d39a)),
                      ),
                    ),
                  ),
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
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  Pin(startFraction: 0.88, endFraction: 0.0),
                  child: Center(
                    child: Text(
                      (this.influx.hdfsInfo.last[HdfsInfoOrder.used.index] /
                                  1073741824)
                              .toStringAsFixed(2) +
                          ' / ' +
                          (this.influx.hdfsInfo.last[HdfsInfoOrder.size.index] /
                                  1073741824)
                              .toStringAsFixed(2) +
                          'GB',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontSize: 18,
                        color: const Color(0xfff4f4f4),
                      ),
                    ),
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
                Pinned.fromPins(
                  Pin(startFraction: 0.075, endFraction: 0.075),
                  Pin(startFraction: 0.15, endFraction: 0.12),
                  child:
                      // Adobe XD layer: 'temp_disks' (shape)
                      Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                      color: Color(0xff232d37),
                    ),
                    child: Stack(
                      children: [
                        Pinned.fromPins(
                          Pin(startFraction: 0.0, endFraction: 0.0),
                          Pin(startFraction: 0.0, endFraction: 0.5),
                          child:
                              // Adobe XD layer: 'text_disks' (text)
                              Center(
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                this
                                        .influx
                                        .yarnClusterMetrics
                                        .last[YarnClusterMetricsOrder
                                            .allocatedVirtualCores.index]
                                        .toString() +
                                    ' / ' +
                                    this
                                        .influx
                                        .yarnClusterMetrics
                                        .last[YarnClusterMetricsOrder
                                            .totalVirtualCores.index]
                                        .toString() +
                                    ' vCores',
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
                        Pinned.fromPins(
                          Pin(startFraction: 0.0, endFraction: 0.0),
                          Pin(size: 1.0, startFraction: 0.5),
                          child:
                              // Adobe XD layer: 'line2' (shape)
                              SvgPicture.string(
                            _svg_p37uj7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(startFraction: 0.0, endFraction: 0.0),
                          Pin(startFraction: 0.5, endFraction: 0.0),
                          child:
                              // Adobe XD layer: 'text_disks' (text)
                              Center(
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(
                                (this.influx.yarnClusterMetrics.last[
                                                YarnClusterMetricsOrder
                                                    .allocatedMB.index] /
                                            1024)
                                        .toStringAsFixed(2) +
                                    ' /  ' +
                                    (this.influx.yarnClusterMetrics.last[
                                                YarnClusterMetricsOrder
                                                    .totalMB.index] /
                                            1024)
                                        .toStringAsFixed(2) +
                                    'GB',
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
                      Stack(children: [
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(startFraction: 0.0, endFraction: 1 - 0.16),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 1.0),
                          child: Text(
                            'Submitted: ' +
                                this
                                    .influx
                                    .yarnClusterAppStatistics
                                    .last[YarnClusterAppStatisticsOrder
                                        .SUBMITTED.index]
                                    .toString(),
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: const Color(0xfff4f4f4),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(size: 1.0, startFraction: 0.16),
                      child:
                          // Adobe XD layer: 'line1' (shape)
                          SvgPicture.string(
                        _svg_pa116h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(startFraction: 0.16, endFraction: 1 - 0.32),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 1.0),
                          child: Text(
                            'Completed: ' +
                                this
                                    .influx
                                    .yarnClusterAppStatistics
                                    .last[YarnClusterAppStatisticsOrder
                                        .FINISHED.index]
                                    .toString(),
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: const Color(0xfff4f4f4),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(size: 1.0, startFraction: 0.32),
                      child:
                          // Adobe XD layer: 'line1' (shape)
                          SvgPicture.string(
                        _svg_pa116h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(startFraction: 0.32, endFraction: 1 - 0.48),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 1.0),
                          child: Text(
                            'Pending: ',
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: const Color(0xfff4f4f4),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(size: 1.0, startFraction: 0.48),
                      child:
                          // Adobe XD layer: 'line1' (shape)
                          SvgPicture.string(
                        _svg_pa116h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(startFraction: 0.48, endFraction: 1 - 0.64),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 1.0),
                          child: Text(
                            'Running: ' +
                                this
                                    .influx
                                    .yarnClusterAppStatistics
                                    .last[YarnClusterAppStatisticsOrder
                                        .RUNNING.index]
                                    .toString(),
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: const Color(0xfff4f4f4),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(size: 1.0, startFraction: 0.64),
                      child:
                          // Adobe XD layer: 'line1' (shape)
                          SvgPicture.string(
                        _svg_pa116h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(startFraction: 0.64, endFraction: 1 - 0.8),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 1.0),
                          child: Text(
                            'Failed: ' +
                                this
                                    .influx
                                    .yarnClusterAppStatistics
                                    .last[YarnClusterAppStatisticsOrder
                                        .FAILED.index]
                                    .toString(),
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: const Color(0xfff4f4f4),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(size: 1.0, startFraction: 0.8),
                      child:
                          // Adobe XD layer: 'line1' (shape)
                          SvgPicture.string(
                        _svg_pa116h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(startFraction: 0.8, endFraction: 1 - 0.96),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 1.0),
                          child: Text(
                            'Killed: ' +
                                this
                                    .influx
                                    .yarnClusterAppStatistics
                                    .last[YarnClusterAppStatisticsOrder
                                        .KILLED.index]
                                    .toString(),
                            style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              color: const Color(0xfff4f4f4),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.0),
                      Pin(size: 1.0, startFraction: 0.96),
                      child:
                          // Adobe XD layer: 'line1' (shape)
                          SvgPicture.string(
                        _svg_pa116h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ]),
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

const String _svg_pa116h =
    '<svg viewBox="203.0 179.0 618.0 1.0" ><path transform="translate(203.0, 179.0)" d="M 0 0 L 618 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p37uj7 =
    '<svg viewBox="203.0 283.0 618.0 1.0" ><path transform="translate(203.0, 283.0)" d="M 0 0 L 618 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g5wier =
    '<svg viewBox="221.0 231.0 582.0 1.0" ><path transform="translate(221.0, 231.0)" d="M 0 0 L 582 0" fill="none" stroke="#4b4b4b" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
