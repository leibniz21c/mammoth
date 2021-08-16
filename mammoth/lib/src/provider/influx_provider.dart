import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mammoth/config.dart';

enum YarnClusterMetricsOrder {
  time,
  activeNodes,
  allocatedMB,
  allocatedVirtualCores,
  appsCompleted,
  appsFailed,
  appsKilled,
  appsPending,
  appsRunning,
  appsSubmitted,
  availableMB,
  availableVirtualCores,
  containersAllocated,
  containersPending,
  containersReserved,
  datetime,
  datetime_1,
  decommissionedNodes,
  lostNodes,
  rebootedNodes,
  reservedMB,
  reservedVirtualCores,
  totalMB,
  totalNodes,
  totalVirtualCores,
  unhealthyNodes
}

enum HdfsInfoOrder {
  time,
  available,
  datetime,
  datetime_1,
  size,
  usePercentage,
  used
}

enum YarnClusterAppStatisticsOrder {
  time,
  ACCEPTED,
  FAILED,
  FINISHED,
  KILLED,
  NEW,
  NEW_SAVING,
  RUNNING,
  SUBMITTED,
  datetime
}
enum YarnClusterApplicationsOrder {
  time,
  allocatedMB,
  allocatedVCores,
  amContainerLogs,
  amHostHttpAddress,
  applicationTags,
  applicationType,
  clusterId,
  diagnostics,
  elapsedTime,
  finalStatus,
  finishedTime,
  id,
  id_1,
  memorySeconds,
  name,
  numAMContainerPreempted,
  numNonAMContainerPreempted,
  preemptedResourceMB,
  preemptedResourceVCores,
  progress,
  queue,
  runningContainers,
  startedTime,
  state,
  trackingUI,
  trackingUrl,
  user,
  vcoreSeconds
}

class InfluxProvider extends ChangeNotifier {
  String baseURL = CONFIG['INFLUX_HOST']!;

  Timer? _timer;
  var yarnClusterMetrics;
  var hdfsInfo;
  var yarnClusterAppStatistics;
  var yarnClusterApplications;
  bool isLoaded = false;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> watchingYarnCluster(String email) async {
    var res = await http.post(
      Uri.parse(Uri.encodeFull(this.baseURL +
          '/query?db=' +
          email +
          '&q=select * from yarnClusterMetrics')),
    );
    this.yarnClusterMetrics =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> watchingYarnAppStatic(String email) async {
    var res = await http.post(
      Uri.parse(Uri.encodeFull(this.baseURL +
          '/query?db=' +
          email +
          '&q=select * from yarnClusterAppStatistics')),
    );
    this.yarnClusterAppStatistics =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> watchingHDFS(String email) async {
    var res = await http.post(
      Uri.parse(Uri.encodeFull(
          this.baseURL + '/query?db=' + email + '&q=select * from hdfsInfo')),
    );
    this.hdfsInfo =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> watchingYarnApp(String email) async {
    var res = await http.post(
      Uri.parse(Uri.encodeFull(this.baseURL +
          '/query?db=' +
          email +
          '&q=select * from yarnClusterApplications')),
    );
    this.yarnClusterApplications =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> startWatching(String email) async {
    print('start watching');
    await watchingYarnCluster(email);
    await watchingHDFS(email);
    await watchingYarnAppStatic(email);
    await watchingYarnApp(email);
    this.isLoaded = true;
    notifyListeners();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) async {
      print('hi');
      await watchingYarnCluster(email);
      await watchingHDFS(email);
      await watchingYarnAppStatic(email);
      await watchingYarnApp(email);
      notifyListeners();
    });
  }

  Future<http.Response> createDB(String email) async {
    var parseCreateQuery = Uri.parse(Uri.encodeFull(
        this.baseURL + '/query?q=create database "' + email + '"'));

    var res = await http.post(parseCreateQuery);
    return res;
  }

  Future<http.Response> sendQuery(String query, {String type = 'get'}) async {
    var parsedQueryUrl =
        Uri.parse(Uri.encodeFull(this.baseURL + '/query?q=' + query));

    var res;
    if (type == 'get') {
      res = await http.get(
        parsedQueryUrl,
      );
    } else {
      res = await http.post(
        parsedQueryUrl,
      );
    }
    return res;
  }
}
