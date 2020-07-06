import 'package:meta/meta.dart';

class AssistanceWork {
  // Database id (key)
  int id;
  int listId;

  String exercise;
  String weight;
  String reps;
  bool isChecked;

  AssistanceWork(
      {
// @required annotation makes sure that
// an optional parameter is actually passed in
     this.listId,
      this.exercise,
      this.weight,
      this.reps,
      this.isChecked});

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'listId': listId,
      'exercise': exercise,
      'weight': weight,
      'reps': reps,
      'isChecked': isChecked,
    };
  }

  static AssistanceWork fromMap(Map<String, dynamic> map) {
    return AssistanceWork(
      listId: map['listId'],
      exercise: map['exercise'],
      weight: map['weight'],
      reps: map['reps'],
      isChecked: map['isChecked'],
    );
  }
}
