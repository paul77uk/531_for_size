import 'dart:async';
import 'package:five_three_one_forever_app/program_title/program_title_db/day_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_name_and_title_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/set_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/week_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  final int version = 1;
  Database db;

  static final DbHelper _dbHelper = DbHelper._internal();
  DbHelper._internal();
  factory DbHelper() {
    return _dbHelper;
  }

  Future<Database> openDb() async {
    if (db == null) {
      db = await openDatabase(
          join(await getDatabasesPath(), 'program_title_59.db'),
          onCreate: (database, version) {
        database.execute(
            'CREATE TABLE programTitle(id INTEGER PRIMARY KEY, title TEXT, currentProgram TEXT)');
        database.execute(
            'CREATE TABLE week(id INTEGER PRIMARY KEY,idProgramTitle INTEGER, weekNum TEXT, currentWeek TEXT, ' +
                'FOREIGN KEY(idProgramTitle)REFERENCES programTitle(id))');
        database.execute(
            'CREATE TABLE day(id INTEGER PRIMARY KEY,idWeek INTEGER, dayNum TEXT, currentDay TEXT, ' +
                'FOREIGN KEY(idWeek)REFERENCES week(id))');
        database.execute(
            'CREATE TABLE exerciseTitle(id INTEGER PRIMARY KEY, idDay INTEGER, title TEXT, currentTitle TEXT,' +
                'FOREIGN KEY(idDay)REFERENCES day(id))');
        database.execute(
            'CREATE TABLE setNum(id INTEGER PRIMARY KEY,idExerciseNameAndTitle INTEGER, setNumber TEXT,percentage TEXT, reps TEXT, exerciseId INTEGER, completed TEXT, prSet TEXT,' +
                'FOREIGN KEY(idExerciseNameAndTitle)REFERENCES exerciseTitle(id))');
        database.execute(
            'CREATE TABLE exercise(id INTEGER PRIMARY KEY, lift TEXT, repMax TEXT, trainingMax TEXT)');

        // Exercises
        database.rawInsert(
            'INSERT INTO exercise(lift, repMax, trainingMax) VALUES("Squat", "68", "60")');
        database.rawInsert(
            'INSERT INTO exercise(lift, repMax, trainingMax) VALUES("Bench", "86", "80")');
        database.rawInsert(
            'INSERT INTO exercise(lift, repMax, trainingMax) VALUES("DeadLift", "120", "110")');
        database.rawInsert(
            'INSERT INTO exercise(lift, repMax, trainingMax) VALUES("Press", "65", "55")');
        database.rawInsert(
            'INSERT INTO exercise(lift, repMax, trainingMax) VALUES("Chin-ups", "5", "BW")');

        // BBB - index 1
        database.rawInsert(
            'INSERT INTO programTitle(title, currentProgram) VALUES("Boring But Big", "false")');

// BBB - week 1 - index 1
        database.rawInsert(
            'INSERT INTO week(idProgramTitle, weekNum, currentWeek) VALUES(1, "1","false")');

        // day 1 - index 1
        database.rawInsert(
            'INSERT INTO day(idWeek, dayNum, currentDay) VALUES(1, "1","false")');

        // Press - Warm Up
        database.rawInsert(
            'INSERT INTO exerciseTitle(idDay, title, currentTitle) VALUES(1, "Warm Up", "false")');

        // Exercise - Press - Warm Up
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(1, "1", "40", "5", 3, "false", "false")');

        // Exercise - Press - Warm Up
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(1, "2", "50", "5", 3, "false", "false")');

        // Exercise - Press - Warm Up
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(1, "3", "60", "5", 3, "false", "false")');

        // Press - 531
        database.rawInsert(
            'INSERT INTO exerciseTitle(idDay, title, currentTitle) VALUES(1, "531", "false")');

// Exercise - Press - 531
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(2, "1", "65", "5", 3, "false", "false")');

        // Exercise - Press - 531
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(2, "2", "75", "5", 3, "false", "false")');

        // Exercise - Press - 531
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(2, "3", "85", "5", 3, "false", "false")');

        // Press - BBB
        database.rawInsert(
            'INSERT INTO exerciseTitle(idDay, title, currentTitle) VALUES(1, "BBB", "false")');

// Exercise - Press - BBB
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(3, "1", "50", "10", 3, "false", "false")');

        // Exercise - Press - BBB
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(3, "2", "50", "10", 3, "false", "false")');

        // Exercise - Press - BBB
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(3, "3", "50", "10", 3, "false", "false")');

        // Exercise - Press - BBB
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(3, "4", "50", "10", 3, "false", "false")');

        // Exercise - Press - BBB
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(3, "5", "50", "10", 3, "false", "false")');

        // Accessory
        database.rawInsert(
            'INSERT INTO exerciseTitle(idDay, title, currentTitle) VALUES(1, "Accessory", "false")');

        // Accessory = Chin-ups
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(4, "1", "0", "10", 4, "false", "false")');

        // Accessory = Chin-ups
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(4, "2", "0", "10", 4, "false", "false")');

        // Accessory = Chin-ups
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(4, "3", "0", "10", 4, "false", "false")');

        // Accessory = Chin-ups
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(4, "4", "0", "10", 4, "false", "false")');

        // Accessory = Chin-ups
        database.rawInsert(
            'INSERT INTO setNum(idExerciseNameAndTitle, setNumber, percentage, reps, exerciseId, completed, prSet) VALUES(4, "5", "0", "10", 4, "false", "false")');

        // day 2 - index 2
        database.rawInsert(
            'INSERT INTO day(idWeek, dayNum, currentDay) VALUES(1, "2","false")');

        // day 3 - index 3
        database.rawInsert(
            'INSERT INTO day(idWeek, dayNum, currentDay) VALUES(1, "3","false")');

// BBB - week 2 - index 1
        database.rawInsert(
            'INSERT INTO week(idProgramTitle, weekNum, currentWeek) VALUES(1, "2","false")');

        // BBB - week 3 - index 1
        database.rawInsert(
            'INSERT INTO week(idProgramTitle, weekNum, currentWeek) VALUES(1, "3","false")');
      }, version: version);
    }
    return db;
  }

  Future<int> insertProgramTitle(ProgramTitleModel programTitleModel) async {
    int id = await this.db.insert(
          'programTitle',
          programTitleModel.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return id;
  }

  Future<int> insertExerciseNameAndTitle(
      ExerciseNameAndTitleModel exerciseNameAndTitle) async {
    int id = await this.db.insert(
          'exerciseTitle',
          exerciseNameAndTitle.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return id;
  }

  Future<int> insertWeekNum(WeekModel weekModel) async {
    int id = await this.db.insert(
          'week',
          weekModel.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return id;
  }

  Future<int> insertDayNum(DayModel dayModel) async {
    int id = await this.db.insert(
          'day',
          dayModel.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return id;
  }

  Future<int> insertSet(SetModel setModel) async {
    int id = await this.db.insert(
          'setNum',
          setModel.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return id;
  }

  Future<int> insertExercise(ExerciseModel exerciseModel) async {
    int id = await this.db.insert(
          'exercise',
          exerciseModel.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return id;
  }

  Future<List<ProgramTitleModel>> getPrograms() async {
    final List<Map<String, dynamic>> maps = await db.query('programTitle');
    return List.generate(maps.length, (i) {
      return ProgramTitleModel(
        maps[i]['id'],
        maps[i]['title'],
        maps[i]['currentProgram'],
      );
    });
  }

  Future<List<ExerciseNameAndTitleModel>> getExerciseTitles(int idDay) async {
    final List<Map<String, dynamic>> maps =
        await db.query('exerciseTitle', where: 'idDay = ?', whereArgs: [idDay]);
    return List.generate(maps.length, (i) {
      return ExerciseNameAndTitleModel(
        maps[i]['id'],
        maps[i]['idDay'],
        maps[i]['title'],
        maps[i]['currentTitle'],
      );
    });
  }

  Future<List<WeekModel>> getWeeks(int idProgramTitle) async {
    final List<Map<String, dynamic>> maps = await db.query('week',
        where: 'idProgramTitle = ?', whereArgs: [idProgramTitle]);
    return List.generate(maps.length, (i) {
      return WeekModel(
        maps[i]['id'],
        maps[i]['idProgramTitle'],
        maps[i]['weekNum'],
        maps[i]['currentWeek'],
      );
    });
  }

  Future<List<DayModel>> getDays(int idWeek) async {
    final List<Map<String, dynamic>> maps =
        await db.query('day', where: 'idWeek = ?', whereArgs: [idWeek]);
    return List.generate(maps.length, (i) {
      return DayModel(
        maps[i]['id'],
        maps[i]['idWeek'],
        maps[i]['dayNum'],
        maps[i]['currentDay'],
      );
    });
  }

  Future<List<SetModel>> getSets(int idExerciseNameAndTitle) async {
    final List<Map<String, dynamic>> maps = await db.query('setNum',
        where: 'idExerciseNameAndTitle = ?',
        whereArgs: [idExerciseNameAndTitle]);
    return List.generate(maps.length, (i) {
      return SetModel(
        maps[i]['id'],
        maps[i]['idExerciseNameAndTitle'],
        maps[i]['setNumber'],
        maps[i]['percentage'],
        maps[i]['reps'],
        maps[i]['exerciseId'],
        maps[i]['completed'],
        maps[i]['prSet'],
      );
    });
  }

  // Future<List<SetModel>> getSets2() async {
  //   final List<Map<String, dynamic>> maps = await db.query(
  //     'setNum',
  //   );
  //   return List.generate(maps.length, (i) {
  //     return SetModel(
  //       maps[i]['id'],
  //       maps[i]['idExerciseNameAndTitle'],
  //       maps[i]['setNumber'],
  //       maps[i]['percentage'],
  //       maps[i]['reps'],
  //       maps[i]['exerciseId'],
  //       maps[i]['completed'],
  //       maps[i]['prSet'],
  //     );
  //   });
  // }

  Future<List<ExerciseModel>> getExercises() async {
    final List<Map<String, dynamic>> maps = await db.query('exercise');
    return List.generate(maps.length, (i) {
      return ExerciseModel(
        maps[i]['id'],
        maps[i]['lift'],
        maps[i]['repMax'],
        maps[i]['trainingMax'],
      );
    });
  }

  Future<int> deleteProgram(
    ProgramTitleModel program,
  ) async {
    // int result = await db.delete("exerciseNameAndTitle",
    //     where: "idProgramTitle = ?", whereArgs: [program.id]);
    int result = await db
        .delete("programTitle", where: "id = ?", whereArgs: [program.id]);
    result = await db
        .delete("week", where: "idProgramTitle = ?", whereArgs: [program.id]);
    result =
        await db.delete("day", where: "idWeek = ?", whereArgs: [program.id]);
    result = await db
        .delete("exerciseTitle", where: "idDay = ?", whereArgs: [program.id]);
    return result;
  }

  Future<int> deleteExerciseTitle(
      ExerciseNameAndTitleModel exerciseNameAndTitleModel) async {
    int result = await db.delete("exerciseTitle",
        where: "id = ?", whereArgs: [exerciseNameAndTitleModel.id]);

    return result;
  }

  Future<int> deleteWeek(WeekModel weekModel) async {
    int result =
        await db.delete("week", where: "id = ?", whereArgs: [weekModel.id]);

    return result;
  }

  Future<int> deleteDay(DayModel dayModel) async {
    int result =
        await db.delete("day", where: "id = ?", whereArgs: [dayModel.id]);

    return result;
  }

  Future<int> deleteSet(SetModel setModel) async {
    int result =
        await db.delete("setNum", where: "id = ?", whereArgs: [setModel.id]);

    return result;
  }

  Future<int> deleteExercise(ExerciseModel exerciseModel) async {
    int result = await db
        .delete("exercise", where: "id = ?", whereArgs: [exerciseModel.id]);

    return result;
  }
}
