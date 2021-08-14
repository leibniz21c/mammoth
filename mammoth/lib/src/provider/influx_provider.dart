import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
// import 'package:influxdb_client/api.dart';

class InfluxProvider extends ChangeNotifier {
  // var client = InfluxDBClient(
  //     url: 'http://101.101.216.207:20001/api/v2',
  //     token:
  //         'DPqjpdwyI5o5htluaG5vmfkMZp_juKtsLwDxsSOFTCP2lno1YKHLzL5ehkd8L11lNyACBMkJS89kZOZ41O_jaQ==',
  //     org: 'mammoth',
  //     bucket: 'leibniz21c@gmail.com');

  String baseURL = 'http://101.101.216.207:8086';
  final Map<String, String> _headers = {
    'Authorization':
        'Token DPqjpdwyI5o5htluaG5vmfkMZp_juKtsLwDxsSOFTCP2lno1YKHLzL5ehkd8L11lNyACBMkJS89kZOZ41O_jaQ==',
    'Content-Type': "application/json",
  };

  Future<void> showBuckets() async {
    // var queryService = client.getQueryService();
    // var recordStream = await queryService.query('''
    // from(bucket: "leibniz21c@gmail.com")
    // |> range(start: v.timeRangeStart, stop: v.timeRangeStop)
    // |> filter(fn: (r) => r["_measurement"] == "yarnClusterInfo")
    // |> aggregateWindow(every: v.windowPeriod, fn: mean, createEmpty: false)
    // |> yield(name: "mean")
    // ''');
    //
    // await recordStream.forEach((element) {
    //   print(element);
    // });
  }

  Future<http.Response> sendQuery(String query) async {
    var parsedQueryUrl =
        Uri.parse(Uri.encodeFull(this.baseURL + '/query?q=' + query));

    var res = await http.get(
      parsedQueryUrl,
      headers: this._headers,
    );
    return res;
  }
}
