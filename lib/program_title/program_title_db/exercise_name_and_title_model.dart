import 'package:meta/meta.dart';

class ExerciseNameAndTitleModel {
  // Database id (key)
  int id;
  int idDay;
  String title;
  String currentTitle;

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional title parameters
  ExerciseNameAndTitleModel(
// @required annotation makes sure that
// an optional parameter is actually passed in
    this.id,
    this.idDay,
    this.title,
    this.currentTitle,
  );

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'id': (id == 0) ? null : id,
      'idDay': idDay,
      'title': title,
      'currentTitle': currentTitle,
    };
  }
}
