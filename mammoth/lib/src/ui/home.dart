import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:mammoth/src/provider/influx_provider.dart';
import 'package:mammoth/src/provider/mongo_provider.dart';
import 'package:mammoth/src/ui/main_screen.dart';
import 'package:mammoth/src/ui/sidebar.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  var user;
  var influx;
  Home({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    this.user = Provider.of<MongoProvider>(context, listen: false).user;
    this.influx = Provider.of<InfluxProvider>(context);
    this.influx.startWatching(this.user.first['email']);
    return Scaffold(
        backgroundColor: const Color(0xff121212),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Sidebar(),
            Pinned.fromPins(
              Pin(startFraction: 0.2, endFraction: 0.0),
              Pin(startFraction: 0.0, endFraction: 0.0),
              child: (this.influx.isLoaded)
                  ? MainScreen()
                  : Center(
                      child: Text(
                        'Connection refused',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
            ),
          ],
        ));
  }
}
