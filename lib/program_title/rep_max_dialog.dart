import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_model.dart';
import 'package:five_three_one_forever_app/widgets/rep_and_training_max_calculator.dart';

import 'package:flutter/material.dart';

class RepMaxDialog extends StatefulWidget {
  final ExerciseModel exerciseModel;
  final bool isNew;

  const RepMaxDialog({Key key, this.exerciseModel, this.isNew})
      : super(key: key);
  @override
  _RepMaxDialogState createState() => _RepMaxDialogState();
}

class _RepMaxDialogState extends State<RepMaxDialog> {
  final _formKey = GlobalKey<FormState>();
  final txtLift = TextEditingController();
  final txtRepMax = TextEditingController();
  final txtTrainingMax = TextEditingController();

  String text = 'Select Lift';

  @override
  Widget build(
    BuildContext context,
  ) {
    DbHelper helper = DbHelper();
    helper.openDb();
    if (!widget.isNew) {
      txtLift.text = widget.exerciseModel.lift;
      txtRepMax.text = widget.exerciseModel.repMax;
      txtTrainingMax.text = widget.exerciseModel.trainingMax;
    }
    return AlertDialog(
      title: Text((widget.isNew) ? 'New RepMax' : 'Edit RepMax'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(children: <Widget>[
          TextFormField(
            textCapitalization: TextCapitalization.words,
            controller: txtLift,
            validator: _validateLift,
            decoration: InputDecoration(hintText: 'Lift'),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: txtRepMax,
            validator: _validateRepMax,
            decoration: InputDecoration(
                hintText: 'Weighted - 1 Rep Max/ Bodyweight - Max Reps'),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: txtTrainingMax,
            validator: _validateTrainingMax,
            decoration: InputDecoration(hintText: 'Training Max/ BW'),
          ),
          SizedBox(height: 8),
          Text(
            'Type BW if bodyweight exercise',
            textAlign: TextAlign.center,
            style: TextStyle(color: Theme.of(context).accentColor),
          ),

          // SizedBox(height: 20.0),
          // _currentUser != null
          //     ? Text(
          //         "Name: " +
          //             _currentUser. +
          //             "\n Email: " +
          //             _currentUser.email +
          //             "\n Username: " +
          //             _currentUser.username +
          //             "\n Password: " +
          //             _currentUser.password,
          //       )
          //     : Text("No User selected"),
          // Padding(
          //     padding: EdgeInsets.all(30.0),
          //     child: Text(
          //       "Your best city is $nameCity",
          //       style: TextStyle(fontSize: 20.0),
          //     )),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                color: ThemeData.dark().accentColor,
                child: Text(
                  'Cancel',
                  style: TextStyle(color: ThemeData.dark().primaryColor),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                  color: ThemeData.dark().accentColor,
                  child: Text(
                    'Save',
                    style: TextStyle(color: ThemeData.dark().primaryColor),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();

                      widget.exerciseModel.lift = txtLift.text;
                      widget.exerciseModel.repMax = txtRepMax.text;
                      widget.exerciseModel.trainingMax = txtTrainingMax.text;

                      // else {
                      //   widget.exerciseModel.lift = txtLift.text;
                      //   widget.exerciseModel.repMax = txtRepMax.text;
                      //   widget.exerciseModel.trainingMax = txtTrainingMax.text;
                      // }
                      helper.insertExercise(widget.exerciseModel);
                      Navigator.pop(context);
                    }
                  }),
            ],
          ),
          RepMaxAndTrainingMaxCalculator(),
        ]),
      )),
    );
  }

  // String _validateSetNumber(String value) {
  //   final repMaxRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
  //   if (value.isEmpty) {
  //     return 'Enter a Set Number';
  //   } else if (!repMaxRegex.hasMatch(value)) {
  //     return 'Enter a valid number';
  //   }
  //   return null;
  // }

  String _validateLift(String value) {
    if (value.isEmpty) {
      return 'Enter a lift';
    }
    return null;
  }

  String _validateRepMax(String value) {
    final repMaxRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
    if (value.isEmpty) {
      return 'Enter starting 1 rep max';
    } else if (!repMaxRegex.hasMatch(value)) {
      return 'Enter a valid number';
    }
    return null;
  }

  String _validateTrainingMax(String value) {
    final repMaxRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
    final bodyweightText = RegExp('BW', dotAll: true);
    if (value.isEmpty) {
      return 'Enter starting training max percentage or BW';
    } else if (!repMaxRegex.hasMatch(value) &&
        !bodyweightText.hasMatch(value)) {
      return 'Enter a valid number or BW';
    }
    return null;
  }
}
