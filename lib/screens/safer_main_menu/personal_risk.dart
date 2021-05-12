import 'dart:collection';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:listar_flutter/models/screen_models/filter_page_model.dart';
import 'package:url_launcher/url_launcher.dart';
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
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Score the items below:',
                  )),
                  subtitle: RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Raleway'),
                      text:
                          '\nScoring Range: 0 - 7\n0 = no risk, 1 = yes to risk',
                    ),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["specialNeeds"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["specialNeeds"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["priorFlooding"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["priorFlooding"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["priorDamages"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["priorDamages"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["priorDangers"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["priorDangers"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["priorOutage"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["priorOutage"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["safePlace"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["safePlace"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
                      return SizedBox(
                        height: 32,
                        child: FilterChip(
                          label: Text(item),
                          onSelected: (bool value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 1,
                    value: _riskScore["doYouHave"].toDouble(),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["doYouHave"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 30, right: 30),
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
