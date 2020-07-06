import 'dart:async';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';

class ProgramDaoBloc {
  DbHelper db;
  List<ProgramTitleModel> programModelList;

  ProgramDaoBloc() {
    db = DbHelper();
    getProgramsFromDb();
    //listen to changes:
    _programModelStreamController.stream.listen(returnPrograms);
    _programModelInsertController.stream.listen(_insertProgram);
    _programModelDeleteController.stream.listen(_deleteProgram);
  }

  final _programModelStreamController =
      StreamController<List<ProgramTitleModel>>.broadcast();
//for updates
  final _programModelInsertController = StreamController<ProgramTitleModel>();

  final _programModelDeleteController = StreamController<ProgramTitleModel>();

//getters
//gets data from the bloc to display in ui
  Stream<List<ProgramTitleModel>> get programModels =>
      _programModelStreamController.stream;
//

// adds data from the ui to the bloc
  StreamSink<List<ProgramTitleModel>> get programModelSink =>
      _programModelStreamController.sink;
  StreamSink<ProgramTitleModel> get programModelInsertSink =>
      _programModelInsertController.sink;

  StreamSink<ProgramTitleModel> get programModelDeleteSink =>
      _programModelDeleteController.sink;

  // Functions
  Future getProgramsFromDb() async {
    await db.openDb();
    List<ProgramTitleModel> programs = await db.getPrograms();
    programModelList = programs;
    programModelSink.add(programs);
  }

  List<ProgramTitleModel> returnPrograms(programs) {
    return programs;
  }

  _deleteProgram(ProgramTitleModel programTitleModel) {
    db.deleteProgram(programTitleModel).then((result) {
      getProgramsFromDb();
    });
  }

  _insertProgram(ProgramTitleModel programTitleModel) {
    db.insertProgramTitle(programTitleModel).then((result) {
      getProgramsFromDb();
    });
  }

  //in the dispose method we need to close the stream controllers.
  void dispose() {
    _programModelStreamController.close();
    _programModelInsertController.close();
    _programModelDeleteController.close();
  }
}
