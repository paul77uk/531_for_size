import 'package:five_three_one_forever_app/program_title/exercise_dialog.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/day_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_name_and_title_model.dart';
import 'package:five_three_one_forever_app/program_title/set_list_page.dart';

import 'package:flutter/material.dart';

class ExerciseNameAndTitleScreen extends StatefulWidget {
  //

  final DayModel dayModel;
  ExerciseNameAndTitleScreen(this.dayModel);

  @override
  _ExerciseNameAndTitleScreenState createState() =>
      _ExerciseNameAndTitleScreenState(this.dayModel);
}

class _ExerciseNameAndTitleScreenState
    extends State<ExerciseNameAndTitleScreen> {
  //
  final DayModel dayModel;
  _ExerciseNameAndTitleScreenState(this.dayModel);

  DbHelper helper;
  List<ExerciseNameAndTitleModel> exerciseModel;
  List<DayModel> dayModelList;
  // List<SetModel> setModel;

  @override
  Widget build(BuildContext context) {
    helper = DbHelper();
    ExerciseDialog exerciseDialog = ExerciseDialog();
    // SetDialog setDialog = SetDialog();
    showData(this.dayModel.id);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Day ${dayModel.dayNum}'),
      ),
      body: ListView.builder(
        itemCount: (exerciseModel != null) ? exerciseModel.length : 0,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(exerciseModel[index].title),
            onDismissed: (direction) {
              String strName = exerciseModel[index].title;
              helper.deleteExerciseTitle(exerciseModel[index]);
              setState(() {
                exerciseModel.removeAt(index);
              });
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$strName deleted")));
            },
            child: Center(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: IconButton(
                      color: ThemeData.dark().accentColor,
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                exerciseDialog.buildAlert(
                                    context, exerciseModel[index], false));
                      },
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${exerciseModel[index].title}',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Checkbox(
                            checkColor: ThemeData.dark().primaryColorDark,
                            value: exerciseModel[index].currentTitle == 'false'
                                ? false
                                : true,
                            onChanged: (bool value) {
                              setState(() {
                                // programTitleModel[index].title =
                                //     programTitleModel[index].title;
                                exerciseModel[index].currentTitle == 'false'
                                    ? exerciseModel[index].currentTitle = 'true'
                                    : exerciseModel[index].currentTitle =
                                        'false';
                                helper.insertExerciseNameAndTitle(
                                    exerciseModel[index]);
                              });
                            }),
                      ],
                    ),
                    onTap: () {},
                    trailing: IconButton(
                      color: ThemeData.dark().accentColor,
                      icon: Icon(Icons.navigate_next),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetListScreen(
                                    exerciseModel[index],
                                  )
                              // ExerciseNameAndTitleScreen(
                              //     programTitleModel[index])
                              ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    height: 0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => exerciseDialog.buildAlert(
                context,
                ExerciseNameAndTitleModel(0, dayModel.id, '', 'false'),
                true),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future showData(int idProgramTitle) async {
    await helper.openDb();
    exerciseModel = await helper.getExerciseTitles(idProgramTitle);
    setState(() {
      exerciseModel = exerciseModel;
    });
  }
}
