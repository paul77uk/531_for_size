import 'package:meta/meta.dart';

class DayModel {
  // Database id (key)
  int id;
  int idWeek;
  String dayNum;
  String currentDay;

// String - not all phone numbers are valid mathematical numbers

// Constructor with optional title parameters
  DayModel(
// @required annotation makes sure that
// an optional parameter is actually passed in
    this.id,
    this.idWeek,
    this.dayNum,
    this.currentDay,
  );

// Map with string keys and values of any type
  Map<String, dynamic> toMap() {
// Map literals are created with curly braces {}
    return {
      'id': (id == 0) ? null : id,
      'idWeek': idWeek,
      'dayNum': dayNum,
      'currentDay': currentDay,
    };
  }
}
