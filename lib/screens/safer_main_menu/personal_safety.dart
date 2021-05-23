import 'package:flutter/material.dart';

class PersonalSafety extends StatefulWidget {
  final String title;

  PersonalSafety({Key key, this.title}) : super(key: key);

  @override
  _PersonalSafetyState createState() {
    return _PersonalSafetyState();
  }
}

class _PersonalSafetyState extends State<PersonalSafety> {
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
                    text: 'Personal Safety in a Storm',
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n\n- Stay home/indoors',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\n- Stay away from:\n  - Electrical equipment\n  - Windows/skylights/doors',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\n- Stay in lower home level:\n  - Glassless space\n  - Hallway/closet/bathroom',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\n- Shut off electricty breaker\n  - Hear thundering\n  - See lightening\n  - If flooding is likely',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n\n- Don\'t use:\n  - Phones\n  - Bath/shower',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text: '\n\n- During power loss:',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n  - Shut off all appliances:\n    - AC, water heater, etc.\n    - Computer, toaster, etc.',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n  - No refrigerator use:\n    - Turn to coldest setting\n    - Keep doors shut',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text: '\n\n- Don\'t go outside',
                          style: TextStyle(fontSize: 15)),
                      TextSpan(
                          text:
                              '\n  - Eye of the storm passed:\n    - New wind will strike\n    - Lightening can strike\n    - Flying debris can strike',
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
