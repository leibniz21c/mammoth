import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

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
  ACCEPTE,
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

class InfluxProvider extends ChangeNotifier {
  String baseURL = 'http://101.101.216.207:8086';
  final Map<String, String> _headers = {
    'Authorization':
        'Token DPqjpdwyI5o5htluaG5vmfkMZp_juKtsLwDxsSOFTCP2lno1YKHLzL5ehkd8L11lNyACBMkJS89kZOZ41O_jaQ==',
    'Content-Type': "application/json",
  };
  Timer? _timer;
  var yarnClusterMetrics;
  var hdfsInfo;
  var yarnClusterAppStatistics;
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
        headers: this._headers);

    this.yarnClusterMetrics =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> watchingYarnApp(String email) async {
    var res = await http.post(
        Uri.parse(Uri.encodeFull(this.baseURL +
            '/query?db=' +
            email +
            '&q=select * from yarnClusterAppStatistics')),
        headers: this._headers);
    this.yarnClusterAppStatistics =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> watchingHDFS(String email) async {
    var res = await http.post(
        Uri.parse(Uri.encodeFull(
            this.baseURL + '/query?db=' + email + '&q=select * from hdfsInfo')),
        headers: this._headers);
    this.hdfsInfo =
        jsonDecode(res.body)['results'].first['series'].first['values'];
  }

  Future<void> startWatching(String email) async {
    await watchingYarnCluster(email);
    await watchingHDFS(email);
    await watchingYarnApp(email);
    this.isLoaded = true;
    notifyListeners();
    // _timer = Timer.periodic(Duration(seconds: 10), (timer) async {
    //   await watchingYarnCluster(email);
    //   await watchingHDFS(email);
    //   await watchingYarnCluster(email);
    //   notifyListeners();
    // });
  }

  Future<http.Response> createDB(String email) async {
    var parseCreateQuery = Uri.parse(Uri.encodeFull(
        this.baseURL + '/query?q=create database "' + email + '"'));

    var res = await http.post(parseCreateQuery, headers: this._headers);
    return res;
  }

  Future<http.Response> sendQuery(String query, {String type = 'get'}) async {
    var parsedQueryUrl =
        Uri.parse(Uri.encodeFull(this.baseURL + '/query?q=' + query));

    var res;
    if (type == 'get') {
      res = await http.get(
        parsedQueryUrl,
        headers: this._headers,
      );
    } else {
      res = await http.post(
        parsedQueryUrl,
        headers: this._headers,
      );
    }
    return res;
  }
}
