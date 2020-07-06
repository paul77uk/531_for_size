import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/assistance_work.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/db/assistance_database.dart';
import 'package:sembast/sembast.dart';

class AssistanceDao {
  static const String ASSISTANCE_STORE_NAME = 'contacts';
// A Store with int keys and Map<String, dynamic> values.
// This is precisely what we need since we convert Contact objects to Map.
  final _assistanceStore = intMapStoreFactory.store(ASSISTANCE_STORE_NAME);

  Future<Database> get _db async => await AssistanceDatabase.instance.database;

  Future insert(AssistanceWork assistanceWork) async {
    await _assistanceStore.add(
      await _db,
      assistanceWork.toMap(),
    );
  }

  Future update(AssistanceWork assistanceWork) async {
// Finder object allows us to filter by key, field values and more.
    final finder = Finder(
      filter: Filter.byKey(assistanceWork.id),
    );
    await _assistanceStore.update(
      await _db,
      assistanceWork.toMap(),
      finder: finder,
    );
  }

  Future delete(AssistanceWork assistanceWork) async {
    final finder = Finder(
      filter: Filter.byKey(assistanceWork.id),
    );
    await _assistanceStore.delete(
      await _db,
      finder: finder,
    );
  }

//   Future<List<Contact>> getAll() async {
// // Finder object can also facilitate sorting.
// // As before, we're primarily sorting based on favorite status,
// // secondary sorting is alphabetical
//     final finder = Finder(sortOrders: [
// // false indicates that isFavorite will be sorted in descending order
// // false should be displayed after true for isFavorite.
//       SortOrder('isFavorite', false),
//       SortOrder('name'),
//     ]);
//     final recordSnapshots = await _assistanceStore.find(
//       await _db,
//       finder: finder,
//     );
// // Map iterates over the whole list and gives us access to every element
// // it also returns a new list containing different values (Contact objects)
//     return recordSnapshots.map((snapshot) {
//       final contact = Contact.fromMap(snapshot.value);
//       contact.id = snapshot.key;
//       return contact;
//     }).toList();
//   }

  Future<List<AssistanceWork>> getAllAssistanceWork() async {
    final snapshot = await _assistanceStore.find(await _db);

    return snapshot.map((map) {
      final assistanceWork = AssistanceWork.fromMap(map.value);

      assistanceWork.id = map.key;
      return assistanceWork;
    }).toList();
  }
}
