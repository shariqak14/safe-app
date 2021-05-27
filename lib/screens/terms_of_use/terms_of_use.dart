import 'package:flutter/material.dart';

class TermsOfUse extends StatefulWidget {
  final String title;

  TermsOfUse({Key key, this.title}) : super(key: key);

  @override
  _TermsOfUseState createState() {
    return _TermsOfUseState();
  }
}

class _TermsOfUseState extends State<TermsOfUse> {
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
                  title: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'SAFER App Terms of Use',
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '\n\nBy downloading the SAFER App, the user agrees to the following terms:',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\nThe SAFER App system provider makes no representations or warranties of any kind express or implied, as to the operation of this site or the information, content, or materials included on or otherwise made available to you through this App. The information, content, and materials made available to you through this App are provided by on an "as is" and "as available" basis. By downloading this app, you expressly agree that your use of this app is at your own risk. The SAFER App system provider disclaims all warranties, express or implied, including, but not limited to, implied warranties of merchantability and fitness for a particular purpose to the full extent permissible, by applicable Federal law. The SAFER App system provider does not warrant that the information, content, or materials included on or otherwise made available to you through this App are free of viruses or other harmful elements. The SAFER App system provider will not be liable for any damages of any kind resulting from the use of any information, content, or materials, included on or otherwise made available to you through this App, including, but not limited to direct, indirect, incidental, punitive, and consequential damages.',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\nThe SAFER App system is free of charge to its users; however normal carrier data fees may apply. Please consult your mobile phone carrier for any possible charges related to the use of this App. The SAFER App system does not rent, sell or share personal identification information about you with other people or any other entities.',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\nThe SAFER App system does not endorse any other entities, whether they are for-profit, non-profit or government entities. None of the information, content and materials included on or otherwise made available to you through this App implies that the SAFER App system endorses any entities. The SAFER App system does not provide any emergency assistance. If you are in need of emergency assistance, please contact 9-1-1.',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\nIn order to maximize the utilities of the SAFER App system, the system may collect user location, property or emergency planning information. For example, user location information is collected to be linked to a city’s emergency management resources such as evacuation routes or evacuation shelters; user property information is collected to aid self-assessment of property risk; user storm preparedness information is collected to provide a self-referenced storm mitigation evaluation tool. In other instances, the SAFER App system may serve as a portal for users to provide personal identification information to another website.  For instance, the SAFER App system may directly link users to a state or city’s storm alert system or flood zone maps. Other examples of when the SAFER App system collects personal identification information could be when users complete a survey or participate in an online forum or community, or customize the Services. Turning location services off will disable certain services in the application, including severe weather alerts.',
                          style: TextStyle(fontSize: 15)),
                    ],
                  )),
                ),
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
