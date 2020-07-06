import 'dart:async';

import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_dao.dart';
import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_model.dart';

import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path_provider/path_provider.dart';

class ExerciseIndexDatabase {
// The only available instance of this ExerciseIndexDatabase class
// is stored in this private field
  static final ExerciseIndexDatabase _singleton = ExerciseIndexDatabase._();
// This instance get-only property is the only way for other classes to access
// the single ExerciseIndexDatabase object.
  static ExerciseIndexDatabase get instance => _singleton;
// Completer is used for transforming synchronous code into asynchronous code.
  Completer<Database> _dbOpenCompleter;
// A private constructor.
// If a class specifies its own constructor, it immediately loses the default one.
// This means that by providing a private constructor, we can create new instances
// only from within this ExerciseIndexDatabase class itself.
  ExerciseIndexDatabase._();
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
    final dbPath =
        join(appDocumentDir.path, 'my_five_three_one_app_exercise_index7.db');
    final database = await databaseFactoryIo.openDatabase(dbPath, version: 1,
        onVersionChanged: (database, oldVersion, newVersion) {
      if (oldVersion == 0) {
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 3,
        )); //0
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 9,
        )); //1
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 2,
        )); //2
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 18,
        )); //3
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 1,
        )); //4
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 4,
        )); //5
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 0,
        )); //6
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 43,
        )); //7
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 3,
        )); //8
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 9,
        )); //9
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 2,
        )); //10
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 18,
        )); //11
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 1,
        )); //12
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 4,
        )); //13
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 0,
        )); //14
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 43,
        )); //15
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 3,
        )); //16
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 9,
        )); //17
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 2,
        )); //18
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 18,
        )); //19
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 1,
        )); //20
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 4,
        )); //21
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 0,
        )); //22
        ExerciseIndexDao().insert(ExerciseIndexClass(
          exerciseIndex: 43,
        )); //23
      }
    });
    _dbOpenCompleter.complete(database);
  }
}
