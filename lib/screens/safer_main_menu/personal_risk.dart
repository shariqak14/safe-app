import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart';

class PersonalRisk extends StatefulWidget {
  final String title;

  PersonalRisk({Key key, this.title}) : super(key: key);

  @override
  _PersonalRiskState createState() {
    return _PersonalRiskState();
  }
}

class _PersonalRiskState extends State<PersonalRisk> {
  List _specialNeeds = [];
  List _priorFlooding = [];
  List _priorDamages = [];
  List _priorDangers = [];
  List _priorOutage = [];
  List _safePlace = [];
  List _doYouHave = [];

  Map<String, int> _riskScore = {
    "specialNeeds": 0,
    "priorFlooding": 0,
    "priorDamages": 0,
    "priorDangers": 0,
    "priorOutage": 0,
    "safePlace": 0,
    "doYouHave": 0,
  };

  final Map<String, List<String>> _headingData = {
    "specialNeeds": [
      "Medication",
      "Walking",
      "Bathing",
      "Wheelchair",
      "Breathing",
      "Feeding",
      "Cooking",
      "Cleaning",
      "Young Children",
      "Pets",
    ],
    "priorFlooding": [
      "Front/Back Yard",
      "Ground Floor",
      "Basement",
      "Street",
      "Neighborhood",
    ],
    "priorDamages": [
      "Roof",
      "Gutters",
      "Window(s)",
      "Door(s)",
      "Garage(s)",
      "House Foundation",
      "Out Buildings",
    ],
    "priorDangers": [
      "Fallen Trees near Houses",
      "Carbon Monoxide Leak",
      "Propane Tank Leak",
      "Sewage Overflow",
      "Mudslide Nearby",
      "Sinkhole Nearby",
      "Electrical Pole Fire",
      "Fallen Electrical Wires",
    ],
    "priorOutage": [
      "Water Outage",
      "Sanitation System Outage",
      "Electrical Power Outage",
      "Air Conditioning Outage",
      "Heating System Outage",
    ],
    "safePlace": [
      "Windowless Hallway",
      "Windowless Closet",
      "Bathtub in Windowless Room",
      "Underground Shelter",
      "Neighbor's House",
      "Friend's House",
      "Relative's House",
    ],
    "doYouHave": [
      "Functional Car",
      "Functional Smartphone",
      "Functional Fixed-line Phone",
      "Operable Radio with Batteries",
      "Electrical Generator",
      "Evacuation Plan",
      "Disaster Kit",
    ]
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
                    title: RichText(
                        text: TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontSize: 20, fontFamily: 'Raleway'),
                  text:
                      'Your Risk Score: ${_riskScore.values.reduce((sum, element) => sum + element)}',
                ))),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Special Needs Care',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["specialNeeds"].map((item) {
                      final bool selected = _specialNeeds.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _specialNeeds.remove(item)
                                : _specialNeeds.add(item);
                            setState(() {
                              _specialNeeds = _specialNeeds;
                              _riskScore["specialNeeds"] = _specialNeeds.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Prior Flooding',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["priorFlooding"].map((item) {
                      final bool selected = _priorFlooding.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _priorFlooding.remove(item)
                                : _priorFlooding.add(item);
                            setState(() {
                              _priorFlooding = _priorFlooding;
                              _riskScore["priorFlooding"] =
                                  _priorFlooding.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Prior Damages',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["priorDamages"].map((item) {
                      final bool selected = _priorDamages.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _priorDamages.remove(item)
                                : _priorDamages.add(item);
                            setState(() {
                              _priorDamages = _priorDamages;
                              _riskScore["priorDamages"] = _priorDamages.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Prior Dangers',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["priorDangers"].map((item) {
                      final bool selected = _priorDangers.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _priorDangers.remove(item)
                                : _priorDangers.add(item);
                            setState(() {
                              _priorDangers = _priorDangers;
                              _riskScore["priorDangers"] = _priorDangers.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Prior Outage',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["priorOutage"].map((item) {
                      final bool selected = _priorOutage.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _priorOutage.remove(item)
                                : _priorOutage.add(item);
                            setState(() {
                              _priorOutage = _priorOutage;
                              _riskScore["priorOutage"] = _priorOutage.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Safe Place to Hide',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["safePlace"].map((item) {
                      final bool selected = _safePlace.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _safePlace.remove(item)
                                : _safePlace.add(item);
                            setState(() {
                              _safePlace = _safePlace;
                              _riskScore["safePlace"] = _safePlace.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                    text: 'Do you have a(n)?',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _headingData["doYouHave"].map((item) {
                      final bool selected = _doYouHave.contains(item);
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          selected: selected,
                          label: Text(item),
                          onSelected: (value) {
                            selected
                                ? _doYouHave.remove(item)
                                : _doYouHave.add(item);
                            setState(() {
                              _doYouHave = _doYouHave;
                              _riskScore["doYouHave"] = _doYouHave.length;
                            });
                          },
                        ),
                      );
                    }).toList(),
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
                    title: RichText(
                        text: TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontSize: 20, fontFamily: 'Raleway'),
                  text:
                      'Your Risk Score: ${_riskScore.values.reduce((sum, element) => sum + element)}',
                ))),
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
