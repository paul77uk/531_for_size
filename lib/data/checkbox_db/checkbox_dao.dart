import 'package:five_three_one_forever_app/data/checkbox_db/app_database.dart';
import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:sembast/sembast.dart';

class CheckboxDao {
  static const String CHECKBOX_STORE_NAME = 'checkboxes';
// A Store with int keys and Map<String, dynamic> values.
// This is precisely what we need since we convert CheckBoxClass objects to Map.
  final _checkboxStore = intMapStoreFactory.store(CHECKBOX_STORE_NAME);

  Future<Database> get _db async => await CheckBoxDatabase.instance.database;

  Future insert(CheckBoxClass checkbox) async {
    await _checkboxStore.add(
      await _db,
      checkbox.toMap(),
    );
  }

  Future update(CheckBoxClass checkbox) async {
// Finder object allows us to filter by key, field values and more.
    final finder = Finder(
      filter: Filter.byKey(checkbox.id),
    );
    await _checkboxStore.update(
      await _db,
      checkbox.toMap(),
      finder: finder,
    );
  }

  Future updateById(CheckBoxClass checkbox) async {
// Finder object allows us to filter by key, field values and more.
    final finder = Finder(
      filter: Filter.byKey(checkbox.id),
    );
    await _checkboxStore.update(
      await _db,
      checkbox.toMap(),
      finder: finder,
    );
  }

  Future delete(CheckBoxClass checkbox) async {
    final finder = Finder(
      filter: Filter.byKey(checkbox.id),
    );
    await _checkboxStore.delete(
      await _db,
      finder: finder,
    );
  }

//   Future<List<CheckBoxClass>> getAll() async {
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
// // it also returns a new list containing different values (CheckBoxClass objects)
//     return recordSnapshots.map((snapshot) {
//       final contact = CheckBoxClass.fromMap(snapshot.value);
//       contact.id = snapshot.key;
//       return contact;
//     }).toList();
//   }

  Future<List<CheckBoxClass>> getAllCheckboxes() async {
    final snapshot = await _checkboxStore.find(await _db);

    return snapshot.map((map) {
      final checkbox = CheckBoxClass.fromMap(map.value);

      checkbox.id = map.key;
      return checkbox;
    }).toList();
  }
}
