import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/ui/page_title.dart';
import 'package:provider/provider.dart';

class Applications extends StatelessWidget {
  Applications({
    Key? key,
  }) : super(key: key);
  var influx;
  @override
  Widget build(BuildContext context) {
    this.influx = Provider.of<InfluxProvider>(context);
    return Stack(
      children: [
        PageTitle('Applications'),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 1 - 0.25),
          Pin(startFraction: 0.17, endFraction: 1 - 0.32),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'Submitted',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.SUBMITTED.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.27, endFraction: 1 - 0.49),
          Pin(startFraction: 0.17, endFraction: 1 - 0.32),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'Accepted',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.ACCEPTED.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.51, endFraction: 1 - 0.73),
          Pin(startFraction: 0.17, endFraction: 1 - 0.32),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'Running',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.RUNNING.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.75, endFraction: 1 - 0.97),
          Pin(startFraction: 0.17, endFraction: 1 - 0.32),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'Finished',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.FINISHED.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.03, endFraction: 1 - 0.25),
          Pin(startFraction: 0.33, endFraction: 1 - 0.48),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'New',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.NEW.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.27, endFraction: 1 - 0.49),
          Pin(startFraction: 0.33, endFraction: 1 - 0.48),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'Failed',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.FAILED.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.51, endFraction: 1 - 0.73),
          Pin(startFraction: 0.33, endFraction: 1 - 0.48),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'New Saving',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[
                                YarnClusterAppStatisticsOrder.NEW_SAVING.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(startFraction: 0.75, endFraction: 1 - 0.97),
          Pin(startFraction: 0.33, endFraction: 1 - 0.48),
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
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.05, endFraction: 0.41),
                  child:
                      // Adobe XD layer: 'text_nodes' (text)
                      Text(
                    'Killed',
                    style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      fontSize: 15,
                      color: const Color(0xfff4f4f4),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  Pin(startFraction: 0.23, endFraction: 0.1),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Center(
                      child: Text(
                        this
                            .influx
                            .yarnClusterAppStatistics
                            .last[YarnClusterAppStatisticsOrder.KILLED.index]
                            .toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
          Pin(startFraction: 0.5, endFraction: 0.05),
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
                  Pin(startFraction: 0.03, endFraction: 0.03),
                  Pin(startFraction: 0.05, endFraction: 0.05),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: this
                            .influx
                            .yarnClusterApplications
                            .map<Widget>((e) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Stack(
                                children: [
                                  Pinned.fromPins(
                                    Pin(startFraction: 0.0, endFraction: 0.0),
                                    Pin(startFraction: 0.0, endFraction: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                        color: Colors.grey[800],
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
                                            Pin(
                                                startFraction: 0.05,
                                                endFraction: 0.05),
                                            Pin(
                                                startFraction: 0.02,
                                                endFraction: 1 - 0.18),
                                            child: Text(
                                              'Name: ' +
                                                  e[YarnClusterApplicationsOrder
                                                          .name.index]
                                                      .toString(),
                                              style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                color: const Color(0xfff4f4f4),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(
                                                startFraction: 0.05,
                                                endFraction: 0.05),
                                            Pin(
                                                startFraction: 0.18,
                                                endFraction: 1 - 0.34),
                                            child: Text(
                                              'User: ' +
                                                  e[YarnClusterApplicationsOrder
                                                          .user.index]
                                                      .toString(),
                                              style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                color: const Color(0xfff4f4f4),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(
                                                startFraction: 0.05,
                                                endFraction: 0.05),
                                            Pin(
                                                startFraction: 0.34,
                                                endFraction: 1 - 0.5),
                                            child: Text(
                                              'State: ' +
                                                  e[YarnClusterApplicationsOrder
                                                          .state.index]
                                                      .toString(),
                                              style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                color: const Color(0xfff4f4f4),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(
                                                startFraction: 0.05,
                                                endFraction: 0.05),
                                            Pin(
                                                startFraction: 0.5,
                                                endFraction: 1 - 0.66),
                                            child: Text(
                                              'Started: ' +
                                                  e[YarnClusterApplicationsOrder
                                                          .startedTime.index]
                                                      .toString(),
                                              style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                color: const Color(0xfff4f4f4),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(
                                                startFraction: 0.05,
                                                endFraction: 0.05),
                                            Pin(
                                                startFraction: 0.66,
                                                endFraction: 1 - 0.82),
                                            child: Text(
                                              'Finished: ' +
                                                  e[YarnClusterApplicationsOrder
                                                          .finishedTime.index]
                                                      .toString(),
                                              style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                color: const Color(0xfff4f4f4),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(
                                                startFraction: 0.05,
                                                endFraction: 0.05),
                                            Pin(
                                                startFraction: 0.82,
                                                endFraction: 1 - 0.98),
                                            child: Text(
                                              'amHost: ' +
                                                  e[YarnClusterApplicationsOrder
                                                          .amHostHttpAddress
                                                          .index]
                                                      .toString(),
                                              style: TextStyle(
                                                fontFamily: 'HelveticaNeue',
                                                color: const Color(0xfff4f4f4),
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
                          );
                        }).toList(),
                      ),
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
