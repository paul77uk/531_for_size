import 'package:meta/meta.dart';

class CheckBoxClass {
  // Database id (key)
  int id;

  String trueOrFalse;

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional lift parameters
  CheckBoxClass({
// @required annotation makes sure that
// an optional parameter is actually passed in
    @required this.trueOrFalse,
  });

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'trueOrFalse': trueOrFalse,
    };
  }

  static CheckBoxClass fromMap(Map<String, dynamic> map) {
    return CheckBoxClass(
      trueOrFalse: map['trueOrFalse'],
    );
  }
}
