import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/data/checkbox_db/checkbox_dao.dart';
import 'package:five_three_one_forever_app/data/contact.dart';
import 'package:five_three_one_forever_app/data/db/contact_dao.dart';
import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_dao.dart';
import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_model.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/assistance_work.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/db/assistance_dao.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactsModel extends Model {
  // Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();

  final ContactDao _contactDao = ContactDao();
  final ExerciseIndexDao _exerciseIndexDao = ExerciseIndexDao();
  final CheckboxDao _checkboxDao = CheckboxDao();
  final AssistanceDao _assistanceDao = AssistanceDao();

  List<Contact> _contacts;
  List<ExerciseIndexClass> _exerciseIndexClass;
  List<CheckBoxClass> _checkboxes;
  List<AssistanceWork> _assistanceWork;

  bool _isLoading = true;

  bool get isLoading => _isLoading;
// get only property, makes sure that we cannot overwrite contacts
// from different classes
  List<Contact> get contacts => _contacts;
  List<ExerciseIndexClass> get exerciseindexClass => _exerciseIndexClass;
  List<CheckBoxClass> get checkboxes => _checkboxes;
  List<AssistanceWork> get assistanceWork => _assistanceWork;

  int myIndex;

  int index0 = 0;
  int index1 = 1;
  int index2 = 2;
  int index3 = 3;
  int index4 = 4;
  int index5 = 5;
  int index6 = 6;
  int index7 = 7;
  int index8 = 8;
  int numValue = 0;
  int numValue2 = 0;
  int numValue3 = 0;
  int dips = 0;
  int chins = 0;
  int abWork = 0;
  int singleLegWork = 0;
  int dips2 = 0;
  int facePulls = 0;
  int abWork2 = 0;
  int singleLegWork2 = 0;

  SharedPreferences prefs;
  double roundToNumSettings;
  double roundToNum;
  int dayIndex;
  int weekIndex;
  int getmDayIndex;
  int getmWeekIndex;

  // String addExerciseIndex;
  // String addExerciseName;
  // int exerciseIndex;
  // String exerciseName;

  String text;

  Future loadContacts() async {
    _isLoading = true;

    _checkboxes = await _checkboxDao.getAllCheckboxes();
    _contacts = await _contactDao.getAllContacts();
    _exerciseIndexClass = await _exerciseIndexDao.getAllExerciseIndexes();
    _assistanceWork = await _assistanceDao.getAllAssistanceWork();

// As soon as contacts are loaded, let listeners know

    notifyListeners();

    _isLoading = false;

    notifyListeners();
  }

  Future awaitMethod() async {
    await Future.delayed(Duration(seconds: 5));
    await loadContacts();
    notifyListeners();
  }

  int setIndex(int index) {
    myIndex = index;

    return myIndex;
  }

  roundToSettings(double number) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('roundToSettings', number);

    // var result = prefs.getDouble('roundToSettings');
    // notifyListeners();
    // print(result);

    // if (prefs.getDouble('roundToSettings') == 2.5) {
    //   roundToNum = 2.5;
    //   notifyListeners();
    // } else if (prefs.getDouble('roundToSettings') == 5) {
    //   roundToNum = 5;
    //   notifyListeners();
    // } else if (prefs.getDouble('roundToSettings') == 10) {
    //   roundToNum = 10;
    notifyListeners();
  }

  setDayCompleted(String prWkDy, bool isCompleted) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setBool(prWkDy, isCompleted);
    notifyListeners();
  }

  getDaysCompleted(String prWkDy) async {
    prefs = await SharedPreferences.getInstance();
    prefs.getBool(prWkDy);
  }

  bookmark(int setDayIndex, int setWeekIndex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('weekIndex', setWeekIndex);
    weekIndex = prefs.getInt('weekIndex');
    await prefs.setInt('dayIndex', setDayIndex);
    dayIndex = prefs.getInt('dayIndex');
    notifyListeners();
  }

  setDayIndex(int dayIndex) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setInt('dayIndex', dayIndex);
    notifyListeners();
  }

  getDayIndex() async {
    prefs = await SharedPreferences.getInstance();
    getmDayIndex = prefs.getInt('dayIndex');
    notifyListeners();
  }

  setWeekIndex(int weekIndex) async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setInt('weekIndex', weekIndex);
    notifyListeners();
  }

  getWeekIndex() async {
    prefs = await SharedPreferences.getInstance();
    getmWeekIndex = prefs.getInt('weekIndex');
    notifyListeners();
  }

  // setLiftIndex(String key, int liftIndex) async {
  //   prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt(key, liftIndex);
  //   notifyListeners();
  // }

  // getLiftIndex(String key, int outputVariable) async {
  //   prefs = await SharedPreferences.getInstance();
  //   outputVariable = prefs.getInt(key);
  //   notifyListeners();
  // }

  getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    roundToNum = prefs.getDouble('roundToSettings');
  }

  String removeDecimalZeroFormat(double n) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 1);
  }

  String roundTrainingMax(double value) {
    // double roundTo25 = value % 2.5;
    getPrefs();

    double roundTo = value % roundToNum;

    String result = '';

    if (roundTo == 0) {
//       result = value.toStringAsFixed(0);
//     } else
      // if (roundTo25 == 0) {
      result = removeDecimalZeroFormat(value);
//       result = value.toStringAsFixed(1);

    }

    if (roundTo != 0) {
      if (roundToNum / 2 > roundTo) {
        //2.5 < 4
        value = value - roundTo;
        result = removeDecimalZeroFormat(value);
      } else if (roundToNum / 2 <= roundTo) // 2.5 < 4
      {
        value = value - roundTo + roundToNum; // 9 -4 + 5

//       }
//     }

//     if (roundTo25 != 0) {
//       if (2.5 / 2 > roundTo25) {
//         //1.25 < 1.5
//         value = value - roundTo25; //
//         result = removeDecimalZeroFormat(value);
// //           result = value.toStringAsFixed(1);
//       } else if (2.5 / 2 <= roundTo25) {
//         value = value - roundTo25 + 2.5; // 7 - 2.5 = 5 + 2.5 = 7.5

        result = removeDecimalZeroFormat(value);
//          result = value.toStringAsFixed(1);
      }
    }
    notifyListeners();
    return result;
  }

  // String roundTrainingMax(double value) {
  //   double roundNum = 5;
  //   double sum = value % roundNum;
  //   double total;

  //   double toAdd = roundNum - sum;

  //   if (sum != 0) {
  //     if (sum >= roundNum / 2) {
  //       total = value + toAdd;
  //       if (total % 2 == 0) {
  //         return total.toStringAsFixed(0);
  //       }
  //     } else if (sum < roundNum / 2) {
  //       total = value - sum;
  //     }
  //     if (total % 2 == 0) {
  //       return total.toStringAsFixed(0);
  //     }
  //   } else if (sum == 0) {
  //     return value.toStringAsFixed(0);
  //   }

  //   if (total % 2 == 0) {
  //     return total.toStringAsFixed(0);
  //   } else {
  //     return total.toStringAsFixed(0);
  //   }
  // }

  String percentageOfTrainingMax(int index, int percentage) {
    double parsedTrainingMax = contacts[index].trainingMax == 'BW'
        ? 0
        : double.parse(contacts[index].trainingMax);
    double result = (parsedTrainingMax / 100) * percentage;
    notifyListeners();
    return
        // roundTrainingMax(result);
        result.toStringAsFixed(0);
  }

  // String displayTrainingMaxRounded(int index) {
  //   double _repMax = (double.parse(_contacts[index].repMax));
  //   double _trainingMax = (double.parse(_contacts[index].trainingMax));

  //   double _calculatedTrainingMax = (_repMax / 100) * _trainingMax;

  //   // double parsedTrainingMax = double.parse(calculateTrainingMax(index));
  //   // double result = (parsedTrainingMax / 100) * percentage;
  //   if (_calculatedTrainingMax != 0) {
  //     return roundTrainingMax(_calculatedTrainingMax,
  //         double.parse(_contacts[index].roundTrainingMax));
  //   } else {
  //     return '0';
  //   }
  // }

  String calculateTrainingMax(int index) {
    double _repMax = (double.parse(_contacts[index].repMax));
    double _trainingMax = (double.parse(_contacts[index].trainingMax));
    double _calculatedTrainingMax = (_repMax / 100) * _trainingMax;
    notifyListeners();
    return roundTrainingMax(_calculatedTrainingMax);

    // _calculatedTrainingMax.toStringAsFixed(0);
  }

  newPr(String pr, int index, int percentage) {
    double parsedRepMax = double.parse(contacts[index].repMax);
    double parsedTrainingMax =
        (double.parse(contacts[index].trainingMax) / 100 * percentage);

    double parsedPr = double.parse(pr);
    double calculatedPr =
        parsedTrainingMax * parsedPr * 0.0333 + parsedTrainingMax;
    if (calculatedPr > parsedRepMax) {
      text = 'Well done your new PR is ${calculatedPr.toStringAsFixed(0)}';
      var updatedContact = Contact(
          lift: contacts[index].lift,
          repMax: calculatedPr.toStringAsFixed(0),
          trainingMax: contacts[index].trainingMax);
      updatedContact.id = contacts[index].id;
      updateContact(updatedContact);
      notifyListeners();
    } else if (pr == '1') {
      calculatedPr = parsedTrainingMax;
      text =
          '${calculatedPr.toStringAsFixed(0)}  You only managed $pr you need to lower your Training Max';
      notifyListeners();
    } else if (pr == '2') {
      text =
          '${calculatedPr.toStringAsFixed(0)}  You only managed $pr you need to lower your Training Max';
      notifyListeners();
    } else if (pr == '0') {
      calculatedPr = 0;
      text =
          'You couldn\'t hit you Training Max for 1, you need to lower your Training Max';
      notifyListeners();
    } else if (calculatedPr < parsedRepMax) {
      text =
          '${calculatedPr.toStringAsFixed(0)}  No PR this time, keep working, it\'s about marginal gains';
      notifyListeners();
    }
    notifyListeners();
  }

  int repsToBeat(int index, int percentage) {
    int i;
    int parsedRepMax = int.parse(contacts[index].repMax);

    double parsedTrainingMax =
        (int.parse(contacts[index].trainingMax) / 100 * percentage);
    for (i = 1;
        parsedTrainingMax * i * 0.0333 + parsedTrainingMax < parsedRepMax + 1;
        i++) {}

    return i;
  }

  bodyWeightRpPr(String pr, int index) {
    int parsedRepMax = int.parse(contacts[index].repMax);

    int parsedPr = int.parse(pr);

    if (parsedPr > parsedRepMax) {
      text = 'Well done your set a new PR of ${parsedPr.toStringAsFixed(0)}';
      var updatedContact = Contact(
          lift: contacts[index].lift,
          repMax: parsedPr.toString(),
          trainingMax: contacts[index].trainingMax);
      updatedContact.id = contacts[index].id;
      updateContact(updatedContact);
    } else if (parsedPr < parsedRepMax) {
      text =
          '${parsedPr.toStringAsFixed(0)}  No PR this time, keep working, it\'s about marginal gains';
    }
    notifyListeners();
  }

  // getExerciseIndex(int exerciseIndex, String text) async {
  //   final SharedPreferences prefs = await _sPrefs;
  //   notifyListeners();

  //   exerciseIndex = prefs.getInt(text);
  //   return exerciseIndex;
  // }

  // getExerciseName(int exerciseIndex, String text) async {
  //   final SharedPreferences prefs = await _sPrefs;
  //   notifyListeners();

  //   exerciseName = prefs.getString(text);
  //   return exerciseName;
  // }

  // Future<Null> addIndex() async {
  //   final SharedPreferences prefs = await _sPrefs;
  //   prefs.setInt(addExerciseIndex, exerciseIndex);
  // }

  // Future<Null> addName() async {
  //   final SharedPreferences prefs = await _sPrefs;
  //   prefs.setString(addExerciseName, exerciseName);
  // }

  addReps() {
    numValue++;
    notifyListeners();
  }

  addReps2() {
    numValue2++;
    notifyListeners();
  }

  addReps3() {
    numValue3++;
    notifyListeners();
  }

  minusReps() {
    numValue = 0;
    notifyListeners();
  }

  minusReps2() {
    numValue2 = 0;
    notifyListeners();
  }

  minusReps3() {
    numValue3 = 0;
    notifyListeners();
  }

  Future addContact(Contact contact) async {
    await _contactDao.insert(contact);
    await loadContacts();
    notifyListeners();
  }

  Future addExerciseIndex(ExerciseIndexClass exerciseIndexClass) async {
    await _exerciseIndexDao.insert(exerciseIndexClass);
    await loadContacts();
    notifyListeners();
  }

  Future addAssistanceWork(AssistanceWork assistanceWork) async {
    await _assistanceDao.insert(assistanceWork);
    await loadContacts();
    notifyListeners();
  }

  // Future addBBMAssistanceWork(BBMAssistanceWork assistanceWork) async {
  //   await _assistanceDao.insert(assistanceWork);
  //   await loadContacts();
  //   notifyListeners();
  // }

  Future updateContact(Contact contact) async {
    await _contactDao.update(contact);
    await loadContacts();
    notifyListeners();
  }

  Future updateExerciseIndex(ExerciseIndexClass exerciseIndexClass) async {
    await _exerciseIndexDao.update(exerciseIndexClass);
    await loadContacts();
    notifyListeners();
  }

  Future updateAssistanceWork(AssistanceWork assistanceWork) async {
    await _assistanceDao.update(assistanceWork);
    await loadContacts();
    notifyListeners();
  }

  Future updateCheckbox(CheckBoxClass checkbox) async {
    await _checkboxDao.update(checkbox);
    await loadContacts();
    notifyListeners();
  }

  Future addCheckbox(CheckBoxClass checkbox) async {
    await _checkboxDao.insert(checkbox);
    await loadContacts();
    notifyListeners();
  }

  Future deleteContact(Contact contact) async {
    await _contactDao.delete(contact);
    await loadContacts();
    notifyListeners();
  }

  Future deleteAssistanceWork(AssistanceWork assistanceWork) async {
    await _assistanceDao.delete(assistanceWork);
    await loadContacts();
    notifyListeners();
  }
}
