import 'package:five_three_one_forever_app/program_title/day_dialog.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/day_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/week_model.dart';
import 'package:flutter/material.dart';

import 'exercise_name_and_title_list_page.dart';

class DayPage extends StatefulWidget {
  //

  final WeekModel weekModel;
  DayPage(this.weekModel);

  @override
  _DayPageState createState() => _DayPageState(this.weekModel);
}

class _DayPageState extends State<DayPage> {
  //
  final WeekModel weekModel;
  _DayPageState(this.weekModel);

  DbHelper helper;
  List<DayModel> daymodel;

  @override
  Widget build(BuildContext context) {
    helper = DbHelper();
    DayDialog dayDialog = DayDialog();
    showData(this.weekModel.id);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Week ${weekModel.weekNum}'),
      ),
      body: ListView.builder(
        itemCount: (daymodel != null) ? daymodel.length : 0,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(daymodel[index].dayNum),
            onDismissed: (direction) {
              String strName = daymodel[index].dayNum;
              helper.deleteDay(daymodel[index]);
              setState(() {
                daymodel.removeAt(index);
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
                            builder: (BuildContext context) => dayDialog
                                .buildAlert(context, daymodel[index], false));
                      },
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Day ${daymodel[index].dayNum}',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Checkbox(
                            checkColor: ThemeData.dark().primaryColorDark,
                            value: daymodel[index].currentDay == 'false'
                                ? false
                                : true,
                            onChanged: (bool value) {
                              setState(() {
                                // dayModel[index].title =
                                //     weekeModel[index].title;
                                daymodel[index].currentDay == 'false'
                                    ? daymodel[index].currentDay = 'true'
                                    : daymodel[index].currentDay = 'false';
                                helper.insertDayNum(daymodel[index]);
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
                              builder: (context) =>
                                  ExerciseNameAndTitleScreen(daymodel[index])),
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
            builder: (BuildContext context) => dayDialog.buildAlert(
                context, DayModel(0, weekModel.id, '', ''), true),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future showData(int idWeek) async {
    await helper.openDb();
    daymodel = await helper.getDays(idWeek);
    setState(() {
      daymodel = daymodel;
    });
  }
}
