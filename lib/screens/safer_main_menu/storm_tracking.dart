import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:listar_flutter/configs/config.dart';
import 'package:listar_flutter/utils/utils.dart';

class StormTracking extends StatefulWidget {
  final String title;

  StormTracking({Key key, this.title}) : super(key: key);

  @override
  _StormTrackingState createState() {
    return _StormTrackingState();
  }
}

class _StormTrackingState extends State<StormTracking> {
  String location = UtilPreferences.getString(Preferences.location);
  Map<String, String> townAlertNotification = {
    "Bridgeport": "https://veoci.com/veoci/p/form/y9qpadaf4mq9#tab=entryForm",
    "Milford": "https://www.ci.milford.ct.us/sign-up-for-e-alerts",
    "New Haven":
        "https://www.newhavenct.gov/gov/depts/emergency_info/alerts.htm",
    "New London": "",
    "Norwalk": "",
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/ct-alert.png')),
                  title: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.blue.withOpacity(1),
                        fontSize: 16,
                        fontFamily: 'Raleway'),
                    text: 'Register for CT Alert Notification System',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch(
                            'https://portal.ct.gov/CTAlert/Common-Elements/Common-Elements/Sign-up-for-CT-Alerts');
                      },
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/ct-map.png')),
                  title: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.blue.withOpacity(1),
                        fontSize: 16,
                        fontFamily: 'Raleway'),
                    text: 'Register for $location Alert Notification',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch(townAlertNotification[location]);
                      },
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/nhc.png')),
                  title: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.blue.withOpacity(1),
                              fontSize: 16,
                              fontFamily: 'Raleway'),
                          text: 'National Hurricane Center',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch('https://www.nhc.noaa.gov/');
                            })),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/storm.png')),
                    title: const Text('Severe Weather and Storm Tracker'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: '- Weather.com',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://weather.com/');
                          },
                        children: <TextSpan>[
                          TextSpan(
                              text: '\n\nNational Weather Service:',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.facebook.com/');
                                }),
                          TextSpan(
                              text: '\n - Weather.gov',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.weather.gov/');
                                }),
                          TextSpan(
                              text: '\n - Weather Forecast Office',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.weather.gov/okx/');
                                }),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/tv.png')),
                    title: const Text('Weather Coverage on Local TV Stations'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: '- WTNH (ABC)',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://www.wtnh.com/weather-alerts/');
                          },
                        children: <TextSpan>[
                          TextSpan(
                              text: '\n- WFSP (CBS)',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.wfsb.com/weather/maps/');
                                }),
                          TextSpan(
                              text: '\n- WVIT (NBC)',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.nbcconnecticut.com/weather/severe-weather-alerts/');
                                }),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
