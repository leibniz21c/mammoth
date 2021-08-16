import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HDFSWeb extends StatelessWidget {
  WebViewController? _webViewController;
  var _user;

  HDFSWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    this._user = Provider.of<MongoProvider>(context).user;
    return Container(
      child: WebView(
        initialUrl: 'http://' +
            this._user.first['ipv4'] +
            ':' +
            this._user.first['port']['50070'] +
            '/explorer.html#/',
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
