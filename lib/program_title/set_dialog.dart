import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/set_model.dart';

import 'package:flutter/material.dart';

class SetDialog extends StatefulWidget {
  SetModel setModel;
  final List<SetModel> setModelList;
  final bool isNew;
  final int index;

  SetDialog({Key key, this.setModel, this.isNew, this.setModelList, this.index})
      : super(key: key);
  @override
  _SetDialogState createState() => _SetDialogState();
}

class _SetDialogState extends State<SetDialog> {
  final _formKey = GlobalKey<FormState>();
  final txtPercentage = TextEditingController();
  final txtSetNumber = TextEditingController();
  final txtReps = TextEditingController();

  ExerciseModel _currentUser;

  String text = 'Select Lift';

  bool isSwitched = false;

  String prSet;

  @override
  Widget build(
    BuildContext context,
  ) {
    DbHelper helper = DbHelper();
    helper.openDb();
    if (!widget.isNew) {
      txtPercentage.text = widget.setModel.percentage;
      txtSetNumber.text = widget.setModel.setNumber;
      txtReps.text = widget.setModel.reps;
    }
    return AlertDialog(
      title: Text((widget.isNew) ? 'New Set' : 'Edit Set'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.number,
            controller: txtSetNumber,
            validator: _validateSetNumber,
            decoration: InputDecoration(hintText: 'Set Number'),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: txtPercentage,
            validator: _validatePercentage,
            decoration: InputDecoration(hintText: 'Percentage'),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: txtReps,
            validator: _validateReps,
            decoration: InputDecoration(hintText: 'Reps'),
          ),
          FutureBuilder<List<ExerciseModel>>(
              future: helper.getExercises(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<ExerciseModel>> snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                return DropdownButton<ExerciseModel>(
                  items: snapshot.data.map((user) {
                    return DropdownMenuItem<ExerciseModel>(
                      child: Text(user.lift),
                      value: user,
                    );
                  }).toList(),
                  onChanged: (ExerciseModel value) {
                    setState(() {
                      _currentUser = value;
                      print(_currentUser.lift);
                      text = _currentUser.lift;
                      widget.setModel.exerciseId = _currentUser.id - 1;
                    });
                  },
                  isExpanded: false,
                  // value: _currentUser,
                  hint: Text(text),
                );
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pr Set'),
              Switch(
                value: widget.setModelList[widget.index].prSet == 'true'
                    ? true
                    : false,
                onChanged: (value) {
                  setState(() {
                    widget.setModelList[widget.index].prSet = value.toString();
                    widget.setModel = widget.setModelList[widget.index];

                    helper.insertSet(widget.setModel);
                  });
                },
                activeColor: ThemeData.dark().accentColor,
              ),
            ],
          ),
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
                    'Save Day',
                    style: TextStyle(color: ThemeData.dark().primaryColor),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      if (widget.isNew) {
                        if (_currentUser.id > 0) {
                          widget.setModel.setNumber = txtSetNumber.text;
                          widget.setModel.percentage = txtPercentage.text;
                          widget.setModel.reps = txtReps.text;

                          widget.setModel.completed = 'false';
                        }
                      } else {
                        widget.setModel.setNumber = txtSetNumber.text;
                        widget.setModel.percentage = txtPercentage.text;
                        widget.setModel.reps = txtReps.text;
                      }
                      helper.insertSet(widget.setModel);
                      setState(() {});
                      Navigator.pop(context);
                    }
                  }),
            ],
          ),
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

  String _validateSetNumber(String value) {
    if (value.isEmpty) {
      return 'Enter a SetNumber';
    }
    return null;
  }

  String _validatePercentage(String value) {
    if (value.isEmpty) {
      return 'Enter a Percentage';
    }
    return null;
  }

  String _validateReps(String value) {
    if (value.isEmpty) {
      return 'Enter number of Reps';
    }
    return null;
  }
}
