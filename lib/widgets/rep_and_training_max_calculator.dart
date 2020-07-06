import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RepMaxAndTrainingMaxCalculator extends StatefulWidget {
  @override
  _RepMaxAndTrainingMaxCalculatorState createState() =>
      _RepMaxAndTrainingMaxCalculatorState();
}

class _RepMaxAndTrainingMaxCalculatorState
    extends State<RepMaxAndTrainingMaxCalculator> {
  final _formKey = GlobalKey<FormState>();
  SharedPreferences prefs;
  double roundToNum;
  String _weight;
  String _reps;
  String _oneRepMax = '';
  String _trainingMaxPercentage;
  String _trainingMax = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: FittedBox(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Text(
                'Rep Max & Training Max Calculator',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 95,
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Weight:'),
                      ),
                      Container(
                        width: 30,
                        height: 50,
                        padding: EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          keyboardType: TextInputType.numberWithOptions(),
                          textAlign: TextAlign.center,
                          onSaved: (value) => _weight = value,
                        ),
                      )
                    ],
                  )),
                ),
                SizedBox(width: 8),
                Container(
                  width: 95,
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Reps:'),
                      ),
                      Container(
                        width: 30,
                        height: 50,
                        padding: EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          keyboardType: TextInputType.numberWithOptions(),
                          textAlign: TextAlign.center,
                          onSaved: (value) => _reps = value,
                        ),
                      )
                    ],
                  )),
                ),
                SizedBox(width: 8),
                Container(
                  width: 120,
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Training Max Percentage:',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 35,
                        padding: EdgeInsets.only(bottom: 16),
                        child: TextFormField(
                          keyboardType: TextInputType.numberWithOptions(),
                          textAlign: TextAlign.center,
                          onSaved: (value) => _trainingMaxPercentage = value,
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 120,
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('1 Rep Max:'),
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        padding: EdgeInsets.only(bottom: 8),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            _oneRepMax,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )),
                ),
                SizedBox(width: 8),
                Container(
                  width: 130,
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Training Max:'),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.only(bottom: 8),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            _trainingMax,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )),
                ),
              ],
            ),
            RaisedButton(
              onPressed: _onSaveContactButtonPressed,
              child: Row(
// Center on the main axis (horizontally)
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('SAVE'),
                ],
              ),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  _onSaveContactButtonPressed() {
// Accessing Form through _formKey
    setState(() {
      _formKey.currentState.save();
      var oneRepMax = (double.parse(_weight) * double.parse(_reps)) * 0.0333 +
          double.parse(_weight);
      var trainingMax =
          (oneRepMax / 100) * double.parse(_trainingMaxPercentage);
      _oneRepMax = oneRepMax.toStringAsFixed(0);
      // oneRepMax.toStringAsFixed(0);
      _trainingMax = trainingMax.toStringAsFixed(0);
      // trainingMax.toStringAsFixed(0);
      print(_oneRepMax);
      print(_trainingMax);
    });
  }

  String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    roundToNum = prefs.getDouble('roundToSettings');
  }

  String roundTrainingMax(double value) {
    // double roundTo25 = value % 2.5;
    getPrefs();

    double roundTo = value % roundToNum;

    String result = '';

    if (roundTo == 0) {
//       result = value.toStringAsFixed(0);
//     } else
      // if (roundTo25 == 0) {
      result = removeDecimalZeroFormat(value);
//       result = value.toStringAsFixed(1);

    }

    if (roundTo != 0) {
      if (roundToNum / 2 > roundTo) {
        //2.5 < 4
        value = value - roundTo;
        result = removeDecimalZeroFormat(value);
      } else if (roundToNum / 2 <= roundTo) // 2.5 < 4
      {
        value = value - roundTo + roundToNum; // 9 -4 + 5

//       }
//     }

//     if (roundTo25 != 0) {
//       if (2.5 / 2 > roundTo25) {
//         //1.25 < 1.5
//         value = value - roundTo25; //
//         result = removeDecimalZeroFormat(value);
// //           result = value.toStringAsFixed(1);
//       } else if (2.5 / 2 <= roundTo25) {
//         value = value - roundTo25 + 2.5; // 7 - 2.5 = 5 + 2.5 = 7.5

        result = removeDecimalZeroFormat(value);
//          result = value.toStringAsFixed(1);
      }
    }

    return result;
  }
}
