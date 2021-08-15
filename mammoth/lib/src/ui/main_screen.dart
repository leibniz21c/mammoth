import 'package:flutter/cupertino.dart';
import 'package:mammoth/src/provider/screen_provider.dart';
import 'package:mammoth/src/ui/hdfs_web.dart';
import 'package:mammoth/src/ui/resources.dart';
import 'package:provider/provider.dart';

import 'Applications.dart';
import 'hdfs.dart';
import 'overview.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    switch (Provider.of<ScreenProvider>(context).screen) {
      case Screen.Overview:
        return OverView();
      case Screen.Resources:
        return Resources();
      case Screen.HDFS:
        return HDFS();
      case Screen.Applications:
        return Applications();
      case Screen.HDFSWeb:
        return HDFSWeb();
      default:
        return OverView();
    }
  }
}
