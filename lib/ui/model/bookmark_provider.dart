import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Bookmark with ChangeNotifier {
  SharedPreferences prefs;

  int _weekIndex;
  int _dayIndex;

  Bookmark() {
    _weekIndex = 0;
    _dayIndex = 0;
  }

  int get dayIndex => _dayIndex;
  int get weekIndex => _weekIndex;

  setBookmark(int setDayIndex, int setWeekIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('weekIndex', setWeekIndex);

    await prefs.setInt('dayIndex', setDayIndex);

    notifyListeners();
  }

  getBookMark() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _weekIndex = prefs.getInt('weekIndex');

    _dayIndex = prefs.getInt('dayIndex');
    if (_weekIndex == null) {
      _weekIndex = 0;
    }
    if (_dayIndex == null) {
      _dayIndex = 0;
    }
    notifyListeners();
  }
}
