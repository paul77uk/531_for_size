import 'package:meta/meta.dart';

class SetModel {
  // Database id (key)
  int id;
  int idExerciseNameAndTitle;
  String setNumber;
  String percentage;
  String reps;
  int exerciseId;
  String completed;
  String prSet;

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional title parameters
  SetModel(
// @required annotation makes sure that
// an optional parameter is actually passed in
    this.id,
    this.idExerciseNameAndTitle,
    this.setNumber,
    this.percentage,
    this.reps,
    this.exerciseId,
    this.completed,
    this.prSet,
  );

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'id': (id == 0) ? null : id,
      'idExerciseNameAndTitle': idExerciseNameAndTitle,
      'setNumber': setNumber,
      'percentage': percentage,
      'reps': reps,
      'exerciseId': exerciseId,
      'completed': completed,
      'prSet': prSet,
    };
  }
}
