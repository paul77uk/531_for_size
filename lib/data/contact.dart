import 'package:meta/meta.dart';

class Contact {
  // Database id (key)
  int id;

  String lift;
  String repMax;
  String trainingMax;

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional lift parameters
  Contact({
// @required annotation makes sure that
// an optional parameter is actually passed in
    @required this.lift,
    @required this.repMax,
    @required this.trainingMax,
  });

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'lift': lift,
      'repMax': repMax,
      'trainingMax': trainingMax,
    };
  }

  static Contact fromMap(Map<String, dynamic> map) {
    return Contact(
      lift: map['lift'],
      repMax: map['repMax'],
      trainingMax: map['trainingMax'],
    );
  }
}
