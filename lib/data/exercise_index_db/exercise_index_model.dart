import 'package:meta/meta.dart';

class ExerciseIndexClass {
  // Database id (key)
  int id;
  int exerciseIndex;
 

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional lift parameters
  ExerciseIndexClass({
// @required annotation makes sure that
// an optional parameter is actually passed in
    @required this.exerciseIndex,
    
  });

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'exerciseIndex': exerciseIndex,
     
    };
  }

  static ExerciseIndexClass fromMap(Map<String, dynamic> map) {
    return ExerciseIndexClass(
      exerciseIndex: map['exerciseIndex'],
     
    );
  }
}
