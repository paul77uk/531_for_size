import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_name_and_title_model.dart';
import 'package:flutter/material.dart';

class ExerciseDialog {
  final txtExerciseTitle = TextEditingController();

  Widget buildAlert(
      BuildContext context, ExerciseNameAndTitleModel exercise, bool isNew) {
    DbHelper helper = DbHelper();
    helper.openDb();
    if (!isNew) {
      txtExerciseTitle.text = exercise.title;
    }
    return AlertDialog(
      title: Text((isNew) ? 'New Exercise' : 'Edit Exercise'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: SingleChildScrollView(
        child: Column(children: <Widget>[
          TextField(
            textCapitalization: TextCapitalization.words,
            controller: txtExerciseTitle,
            decoration: InputDecoration(hintText: 'Title'),
          ),
          RaisedButton(
            color: ThemeData.dark().accentColor,
            child: Text(
              'Save Title',
              style: TextStyle(color: ThemeData.dark().primaryColor),
            ),
            onPressed: () {
              exercise.title = txtExerciseTitle.text;
              helper.insertExerciseNameAndTitle(exercise);
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
