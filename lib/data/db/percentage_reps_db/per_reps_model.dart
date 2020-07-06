import 'package:meta/meta.dart';

class PerRepsModel {
  // Database id (key)
  int id;

  String percentage;
  String reps;

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional percentage parameters
  PerRepsModel({
// @required annotation makes sure that
// an optional parameter is actually passed in
    @required this.percentage,
    @required this.reps,
  });

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'percentage': percentage,
      'reps': reps,
    };
  }

  static PerRepsModel fromMap(Map<String, dynamic> map) {
    return PerRepsModel(
      percentage: map['percentage'],
      reps: map['reps'],
    );
  }
}
