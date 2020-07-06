import 'package:shared_preferences/shared_preferences.dart';

class SavedPrefs {
  SharedPreferences prefs;

  int _weekIndex;
  int _dayIndex;

  // Bookmark() {
  //   _weekIndex = 0;
  //   _dayIndex = 0;
  // }

  int get dayIndex => _dayIndex;
  int get weekIndex => _weekIndex;

  setBookmark(int setDayIndex, int setWeekIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('weekIndex', setWeekIndex);

    await prefs.setInt('dayIndex', setDayIndex);
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
  }

  int getDayIndex() {
    int dayIndex = prefs.getInt('dayIndex');
    return dayIndex == null ? 0 : dayIndex;
  }

  int getWeekIndex() {
    int weekIndex = prefs.getInt('weekIndex');
    return weekIndex == null ? 0 : weekIndex;
  }
}
