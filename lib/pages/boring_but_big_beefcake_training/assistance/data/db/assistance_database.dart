import 'dart:async';

import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/assistance_work.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/db/assistance_dao.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AssistanceDatabase {
// The only available instance of this AssistanceDatabase class
// is stored in this private field
  static final AssistanceDatabase _singleton = AssistanceDatabase._();
// This instance get-only property is the only way for other classes to access
// the single AssistanceDatabase object.
  static AssistanceDatabase get instance => _singleton;
// Completer is used for transforming synchronous code into asynchronous code.
  Completer<Database> _dbOpenCompleter;
// A private constructor.
// If a class specifies its own constructor, it immediately loses the default one.
// This means that by providing a private constructor, we can create new instances
// only from within this AssistanceDatabase class itself.
  AssistanceDatabase._();
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
    final dbPath = join(appDocumentDir.path, 'bbbbt_assistance10.db');
    final database = await databaseFactoryIo.openDatabase(dbPath, version: 1,
        onVersionChanged: (database, oldVersion, newVersion) {
      if (oldVersion == 0) {
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'Dips',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'chins',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'Dips',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'chins',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'Dips',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'chins',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'Dips',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'chins',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'Dips',
            weight: '',
            reps: '10',
            isChecked: false));
        AssistanceDao().insert(AssistanceWork(
            listId: 0,
            exercise: 'chins',
            weight: '',
            reps: '10',
            isChecked: false));
      }
    });
    _dbOpenCompleter.complete(database);
  }
}
