import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_database.dart';
import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_model.dart';
import 'package:sembast/sembast.dart';

class ExerciseIndexDao {
  static const String EXERCISE_INDEX_STORE_NAME = 'exerciseIndexes';
// A Store with int keys and Map<String, dynamic> values.
// This is precisely what we need since we convert ExerciseIndexClass objects to Map.
  final _exerciseIndexStore =
      intMapStoreFactory.store(EXERCISE_INDEX_STORE_NAME);

  Future<Database> get _db async =>
      await ExerciseIndexDatabase.instance.database;

  Future insert(ExerciseIndexClass exerciseIndexClass) async {
    await _exerciseIndexStore.add(
      await _db,
      exerciseIndexClass.toMap(),
    );
  }

  Future update(ExerciseIndexClass exerciseIndexClass) async {
// Finder object allows us to filter by key, field values and more.
    final finder = Finder(
      filter: Filter.byKey(exerciseIndexClass.id),
    );
    await _exerciseIndexStore.update(
      await _db,
      exerciseIndexClass.toMap(),
      finder: finder,
    );
  }

  Future updateById(ExerciseIndexClass exerciseIndexClass) async {
// Finder object allows us to filter by key, field values and more.
    final finder = Finder(
      filter: Filter.byKey(exerciseIndexClass.id),
    );
    await _exerciseIndexStore.update(
      await _db,
      exerciseIndexClass.toMap(),
      finder: finder,
    );
  }

  Future delete(ExerciseIndexClass exerciseIndexClass) async {
    final finder = Finder(
      filter: Filter.byKey(exerciseIndexClass.id),
    );
    await _exerciseIndexStore.delete(
      await _db,
      finder: finder,
    );
  }

//   Future<List<ExerciseIndexClass>> getAll() async {
// // Finder object can also facilitate sorting.
// // As before, we're primarily sorting based on favorite status,
// // secondary sorting is alphabetical
//     final finder = Finder(sortOrders: [
// // false indicates that isFavorite will be sorted in descending order
// // false should be displayed after true for isFavorite.
//       SortOrder('isFavorite', false),
//       SortOrder('name'),
//     ]);
//     final recordSnapshots = await _contactStore.find(
//       await _db,
//       finder: finder,
//     );
// // Map iterates over the whole list and gives us access to every element
// // it also returns a new list containing different values (ExerciseIndexClass objects)
//     return recordSnapshots.map((snapshot) {
//       final contact = ExerciseIndexClass.fromMap(snapshot.value);
//       contact.id = snapshot.key;
//       return contact;
//     }).toList();
//   }

  Future<List<ExerciseIndexClass>> getAllExerciseIndexes() async {
    final snapshot = await _exerciseIndexStore.find(await _db);

    return snapshot.map((map) {
      final exerciseIndexClass = ExerciseIndexClass.fromMap(map.value);

      exerciseIndexClass.id = map.key;
      return exerciseIndexClass;
    }).toList();
  }
}
