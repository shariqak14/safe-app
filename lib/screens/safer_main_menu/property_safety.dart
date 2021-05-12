import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:listar_flutter/configs/config.dart';
import 'package:listar_flutter/utils/utils.dart';

class PropertySafety extends StatefulWidget {
  final String title;

  PropertySafety({Key key, this.title}) : super(key: key);

  @override
  _PropertySafetyState createState() {
    return _PropertySafetyState();
  }
}

class _PropertySafetyState extends State<PropertySafety> {
  String location = UtilPreferences.getString(Preferences.location);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Property Safety'),
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
                        backgroundImage: AssetImage('assets/images/map.png')),
                    title: const Text('Map Your Geographic Terrain'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Google Maps',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://www.google.com/maps/');
                          },
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
                        backgroundImage:
                            AssetImage('assets/images/flood-zone.png')),
                    title: const Text('Flood Zone'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Flood Maps',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://hazards-fema.maps.arcgis.com/apps/webappviewer/index.html?id=8b0adb51996444d4879338b5529aa9cd');
                          },
                        children: <TextSpan>[
                          TextSpan(
                              text: '\nFEMA Flood Map Address Search',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.fema.gov/flood-maps');
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
                        backgroundImage:
                            AssetImage('assets/images/structure.png')),
                    title: const Text('Structural Integrity'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Home Structure Safety',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.nachi.org/structural-design-basics-residential-construction.htm');
                          },
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
                        backgroundImage:
                            AssetImage('assets/images/drainage.png')),
                    title: const Text('Drainage System'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Rainwater Drainage System',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.youtube.com/watch?v=Zgz33tfSu8M');
                          },
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
                        backgroundImage:
                            AssetImage('assets/images/home-flooding.png')),
                    title: const Text('Home Flooding'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Home Flooding Mitigation',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.youtube.com/watch?v=Zgz33tfSu8M');
                          },
                        children: <TextSpan>[
                          TextSpan(
                              text: '\nFlood Prevention Tips',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.youtube.com/watch?v=g_BkmkqgUMg');
                                }),
                          TextSpan(
                              text: '\nWhat to do during a flood?',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.youtube.com/watch?v=g_BkmkqgUMg');
                                }),
                          TextSpan(
                              text: '\nHow to survive a flood evacuation?',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.youtube.com/watch?v=fz2_oeeA52c');
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
                        backgroundImage: AssetImage('assets/images/boat.png')),
                    title: const Text('Boat/Outdoor Items'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text:
                            'Prepare to secure your boat and store your outdoor items.',
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
                        backgroundImage: AssetImage('assets/images/beach.png')),
                    title: const Text('Beach Safety'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Bridgeport Flood/Storm Surge Map',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.bridgeportct.gov/filestorage/341650/341652/346107/342903/SLOSH-bridgeport_(2).pdf');
                          },
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
