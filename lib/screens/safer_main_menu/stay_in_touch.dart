import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:listar_flutter/configs/config.dart';
import 'package:listar_flutter/utils/utils.dart';

class StayInTouch extends StatefulWidget {
  final String title;

  StayInTouch({Key key, this.title}) : super(key: key);

  @override
  _StayInTouchState createState() {
    return _StayInTouchState();
  }
}

class _StayInTouchState extends State<StayInTouch> {
  String location = UtilPreferences.getString(Preferences.location);
  Map<String, String> townEmergencyLink = {
    "Bridgeport":
        "https://www.bridgeportct.gov/content/341307/341419/368105.aspx",
    "Milford": "https://www.ci.milford.ct.us/emergency-management-services",
    "New Haven":
        "https://www.newhavenct.gov/cityservices/emergency_services/default.htm",
    "New London":
        "http://www.ci.new-london.ct.us/content/8251/13617/default.aspx",
    "Norwalk": "https://www.norwalkct.org/324/Emergency-Management",
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
                            AssetImage('assets/images/social_media.png')),
                    title: const Text('Social Media'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Facebook',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://www.facebook.com');
                          },
                        children: [
                          TextSpan(
                            text: '\nTwitter',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch('https://www.twitter.com');
                              },
                          )
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
                      backgroundImage: AssetImage('assets/images/police.png')),
                  title: const Text('Police, Fire, and Medical Emergency:'),
                  subtitle: Text(
                    'Call 911',
                    style: TextStyle(
                        color: Colors.blue.withOpacity(1),
                        fontFamily: 'Raleway'),
                  ),
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
                      backgroundImage:
                          AssetImage('assets/images/emergency.png')),
                  title: const Text('Emergency Needs'),
                  subtitle: Text(
                    'Call 211',
                    style: TextStyle(
                        color: Colors.blue.withOpacity(1),
                        fontFamily: 'Raleway'),
                  ),
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
                        backgroundImage:
                            AssetImage('assets/images/emergency-service.png')),
                    title: const Text('Emergency Service Center'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'City of $location',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(townEmergencyLink[location]);
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
                            AssetImage('assets/images/resources.png')),
                    title: const Text('Resources'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.blue.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Get in Contact with FEMA',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://www.fema.gov/about/contact');
                          },
                        children: [
                          TextSpan(
                            text: '\nRed Cross Relief',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch(
                                    'https://www.redcross.org/get-help/disaster-relief-and-recovery-services.html');
                              },
                          )
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
