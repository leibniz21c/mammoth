import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class InfluxProvider extends ChangeNotifier {
  var baseURL;

  InfluxProvider() : baseURL = 'http://101.101.218.207:8086';

  Future<http.Response> sendQuery(String query, {String type = 'get'}) async {
    var parsedQueryUrl =
        Uri.parse(Uri.encodeFull(this.baseURL + '/query?q=' + query));
    var res;
    if (type == 'get') {
      res = await http.get(parsedQueryUrl);
    } else if (type == 'post') {
      res = await http.post(parsedQueryUrl);
    }
    return res;
  }
}
