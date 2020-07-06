import 'dart:async';
import 'package:five_three_one_forever_app/data/contact.dart';
import 'package:five_three_one_forever_app/data/db/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path_provider/path_provider.dart';

class AppDatabase {
// The only available instance of this AppDatabase class
// is stored in this private field
  static final AppDatabase _singleton = AppDatabase._();
// This instance get-only property is the only way for other classes to access
// the single AppDatabase object.
  static AppDatabase get instance => _singleton;
// Completer is used for transforming synchronous code into asynchronous code.
  Completer<Database> _dbOpenCompleter;
// A private constructor.
// If a class specifies its own constructor, it immediately loses the default one.
// This means that by providing a private constructor, we can create new instances
// only from within this AppDatabase class itself.
  AppDatabase._();
  Future<Database> get database async {
// If completer is null, database is not yet opened
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
// Calling _openDatabase will also complete the completer with database instance
      _openDatabase();
    }
// If the database is already opened, return immediately.
// Otherwise, wait until complete() is called on the Completer in _openDatabase()
    return _dbOpenCompleter.future;
  }

  Future _openDatabase() async {
// Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir = await getApplicationDocumentsDirectory();
// Path with the form: /platform-specific-directory/contacts.db
    final dbPath = join(appDocumentDir.path, 'my_five_three_one_app.db');
    final database = await databaseFactoryIo.openDatabase(dbPath, version: 1,
        onVersionChanged: (database, oldVersion, newVersion) {
      if (oldVersion == 0) {
        ContactDao().insert(Contact(
          //index 0
          lift: 'Squat',
          repMax: '68',
          trainingMax: '60',
        ));
        ContactDao().insert(Contact(
          //index 1
          lift: 'Bench',
          repMax: '86',
          trainingMax: '80',
        ));
        ContactDao().insert(Contact(
          lift: 'Deadlift', //index 2
          repMax: '120',
          trainingMax: '110',
        ));
        ContactDao().insert(Contact(
          lift: 'Press', // index 3
          repMax: '65',
          trainingMax: '55',
        ));
        ContactDao().insert(Contact(
          lift: 'Bent Row', // index 4
          repMax: '60',
          trainingMax: '50',
        ));
        ContactDao().insert(Contact(
          lift: 'Curl', // index 5
          repMax: '50',
          trainingMax: '20',
        ));
        ContactDao().insert(Contact(
          lift: 'Shrug', // index 6
          repMax: '60',
          trainingMax: '50',
        ));
        ContactDao().insert(Contact(
          lift: 'Reverse Fly', // index 7
          repMax: '30',
          trainingMax: '25',
        ));
        ContactDao().insert(Contact(
          lift: 'Dips', // index 8
          repMax: '11',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Chins', // index 9
          repMax: '5',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Lunges', // index 10
          repMax: '0',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Push Up', // index 11
          repMax: '19',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Ab Wheel', // index 12
          repMax: '0',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Snatch', // index 13
          repMax: '50',
          trainingMax: '40',
        ));
        ContactDao().insert(Contact(
          lift: 'Close Grip Bench', // index 14
          repMax: '55',
          trainingMax: '50',
        ));
        ContactDao().insert(Contact(
          lift: 'Reverse Grip Curls', // index 15
          repMax: '20',
          trainingMax: '20',
        ));
        ContactDao().insert(Contact(
          lift: 'Straight Leg Deadlift', // index 16
          repMax: '20',
          trainingMax: '15',
        ));
        ContactDao().insert(Contact(
          lift: 'Pull-ups', // index 17
          repMax: '5',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Hanging Leg Raise', // index 18
          repMax: '10',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Kroc Row', // index 19
          repMax: '40',
          trainingMax: '35',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Farmers', // index 20
          repMax: '80',
          trainingMax: '70',
        ));
        ContactDao().insert(Contact(
          lift: 'Clean & Press', // index 21
          repMax: '66',
          trainingMax: '60',
        ));
        ContactDao().insert(Contact(
          lift: 'Farmers', // index 22
          repMax: '120',
          trainingMax: '90',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Curl', // index 23
          repMax: '50',
          trainingMax: '40',
        ));
        ContactDao().insert(Contact(
          lift: 'Hang Clean', // index 24
          repMax: '65',
          trainingMax: '50',
        ));
        ContactDao().insert(Contact(
          lift: 'Lateral, Front Hold Combo', // index 25
          repMax: '20',
          trainingMax: '15',
        ));
        ContactDao().insert(Contact(
          lift: 'Kirk Karwoski Row', // index 26
          repMax: '20',
          trainingMax: '15',
        ));
        ContactDao().insert(Contact(
          lift: 'Neck Harness', // index 27
          repMax: '20',
          trainingMax: '15',
        ));
        ContactDao().insert(Contact(
          lift: 'Rope Chin-Up', // index 28
          repMax: '25',
          trainingMax: 'BW',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Deadlift', // index 29
          repMax: '70',
          trainingMax: '60',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Kroc Row', // index 30
          repMax: '30',
          trainingMax: '25',
        ));
        ContactDao().insert(Contact(
          lift: 'Bulgarian Squats', // index 31
          repMax: '5',
          trainingMax: '5',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Yates Row', // index 32
          repMax: '50',
          trainingMax: '40',
        ));
        ContactDao().insert(Contact(
          lift: 'Jump Squats', // index 33
          repMax: '30',
          trainingMax: '25',
        ));
        ContactDao().insert(Contact(
          lift: 'Crucifix Hold', // index 34
          repMax: '20',
          trainingMax: '15',
        ));
        ContactDao().insert(Contact(
          lift: 'Front Hold', // index 35
          repMax: '25',
          trainingMax: '20',
        ));
        ContactDao().insert(Contact(
          lift: 'Push Out', // index 36
          repMax: '25',
          trainingMax: '20',
        ));
        ContactDao().insert(Contact(
          lift: 'KettleBell Swing', // index 37
          repMax: '40',
          trainingMax: '35',
        ));
        ContactDao().insert(Contact(
          lift: 'SkullCrushers', // index 38
          repMax: '40',
          trainingMax: '35',
        ));
        ContactDao().insert(Contact(
          lift: 'Power Clean', // index 39
          repMax: '65',
          trainingMax: '50',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Clean & Press', // index 40
          repMax: '50',
          trainingMax: '40',
        ));
        ContactDao().insert(Contact(
          lift: 'Dumbbell Row', // index 41
          repMax: '40',
          trainingMax: '35',
        ));
        ContactDao().insert(Contact(
          lift: 'Yates Row', // index 42
          repMax: '60',
          trainingMax: '50',
        ));
        ContactDao().insert(Contact(
          lift: 'Leg Curl', // index 43
          repMax: '40',
          trainingMax: '30',
        ));
        ContactDao().insert(Contact(
          lift: 'Fat Grip Bicep Walk', // index 44
          repMax: '40',
          trainingMax: '30',
        ));
      }
    });
    _dbOpenCompleter.complete(database);
  }
}
