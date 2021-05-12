import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class PropertyRisk extends StatefulWidget {
  final String title;

  PropertyRisk({Key key, this.title}) : super(key: key);

  @override
  _PropertyRiskState createState() {
    return _PropertyRiskState();
  }
}

class _PropertyRiskState extends State<PropertyRisk> {
  Map<String, int> _riskScore = {
    "buildingStructure": 0,
    "roofAge": 0,
    "elevation": 0,
    "flooding": 0,
    "drainage": 0,
    "waterDamage": 0,
    "window": 0,
    "sewage": 0,
    "waterSupply": 0,
    "fuelSupply": 0,
    "itemSecurity": 0,
    "treeFalling": 0,
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
                            AssetImage('assets/images/property-risk.png')),
                    title: Text('Property Risk in a Storm'),
                    subtitle: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black.withOpacity(1),
                            fontFamily: 'Raleway'),
                        text: 'Score the items below:',
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n\nScoring Range: 0 - 60',
                          ),
                          TextSpan(
                            text:
                                '\n0 = no risk \t\t\t\t\t  1 = minimal risk \n2 = low risk \t\t\t  3 = medium risk\n4 = high risk \t\t\t 5 = very high risk',
                          ),
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
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/house.png')),
                  title: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Home Type', suffixText: 'years'),
                    ),
                  ),
                  subtitle: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Building Age', suffixText: 'years'),
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
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Building Structure',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["buildingStructure"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["buildingStructure"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Age of the Roof',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["roofAge"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["roofAge"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Property Elevation Level',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["elevation"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["elevation"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Potential Flooding via Nearby River/Lake',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["flooding"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["flooding"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Drainage System Functions',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["drainage"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["drainage"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Potential Water Damage on Property',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["waterDamage"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["waterDamage"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Window Protection from Storm',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["window"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["window"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Sewage System',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["sewage"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) =>
                        setState(() => _riskScore["sewage"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Water Supply',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["waterSupply"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["waterSupply"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Heating/Cooking Fuel Supply',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["fuelSupply"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["fuelSupply"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Boat/Outdoor Item Security',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["itemSecurity"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["itemSecurity"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Raleway'),
                    text: 'Tree Falling on House',
                  )),
                ),
                Padding(
                  child: SpinBox(
                    min: 0,
                    max: 5,
                    value: _riskScore["treeFalling"].toDouble(),
                    decoration: InputDecoration(border: InputBorder.none),
                    validator: (text) => text.isEmpty ? 'Invalid' : null,
                    onChanged: (value) => setState(
                        () => _riskScore["treeFalling"] = value.toInt()),
                  ),
                  padding: EdgeInsets.only(left: 10),
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
