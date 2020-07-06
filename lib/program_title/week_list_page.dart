import 'package:five_three_one_forever_app/program_title/day_list_page.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';

import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/week_model.dart';
import 'package:five_three_one_forever_app/program_title/week_dialog.dart';
import 'package:flutter/material.dart';

class WeekPage extends StatefulWidget {
  //

  final ProgramTitleModel programTitleModel;
  WeekPage(this.programTitleModel);

  @override
  _WeekPageState createState() => _WeekPageState(this.programTitleModel);
}

class _WeekPageState extends State<WeekPage> {
  //
  final ProgramTitleModel programTitleModel;
  _WeekPageState(this.programTitleModel);

  DbHelper helper;
  List<WeekModel> weekmodel;

  @override
  Widget build(BuildContext context) {
    helper = DbHelper();
    WeekDialog weekDialog = WeekDialog();
    showData(this.programTitleModel.id);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(programTitleModel.title),
      ),
      body: ListView.builder(
        itemCount: (weekmodel != null) ? weekmodel.length : 0,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(weekmodel[index].weekNum),
            onDismissed: (direction) {
              String strName = weekmodel[index].weekNum;
              helper.deleteWeek(weekmodel[index]);
              setState(() {
                weekmodel.removeAt(index);
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
                            builder: (BuildContext context) => weekDialog
                                .buildAlert(context, weekmodel[index], false));
                      },
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Week ${weekmodel[index].weekNum}',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Checkbox(
                            checkColor: ThemeData.dark().primaryColorDark,
                            value: weekmodel[index].currentWeek == 'false'
                                ? false
                                : true,
                            onChanged: (bool value) {
                              setState(() {
                                // programTitleModel[index].title =
                                //     programTitleModel[index].title;
                                weekmodel[index].currentWeek == 'false'
                                    ? weekmodel[index].currentWeek = 'true'
                                    : weekmodel[index].currentWeek = 'false';
                                helper.insertWeekNum(weekmodel[index]);
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
                              builder: (context) => DayPage(
                                    weekmodel[index],
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
            builder: (BuildContext context) => weekDialog.buildAlert(
                context, WeekModel(0, programTitleModel.id, '', ''), true),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future showData(int idProgramTitle) async {
    await helper.openDb();
    weekmodel = await helper.getWeeks(idProgramTitle);
    setState(() {
      weekmodel = weekmodel;
    });
  }
}
