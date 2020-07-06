import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/week_model.dart';
import 'package:flutter/material.dart';

class WeekDialog {
  final txtWeekNum = TextEditingController();

  Widget buildAlert(BuildContext context, WeekModel weekModel, bool isNew) {
    DbHelper helper = DbHelper();
    helper.openDb();
    if (!isNew) {
      txtWeekNum.text = weekModel.weekNum;
    }
    return AlertDialog(
      title: Text((isNew) ? 'New Week' : 'Edit Week Number'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: SingleChildScrollView(
        child: Column(children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: txtWeekNum,
            decoration: InputDecoration(hintText: 'Week'),
          ),
          RaisedButton(
            color: ThemeData.dark().accentColor,
            child: Text(
              'Save Week',
              style: TextStyle(color: ThemeData.dark().primaryColor),
            ),
            onPressed: () {
              weekModel.weekNum = txtWeekNum.text;
              weekModel.currentWeek = 'false';
              helper.insertWeekNum(weekModel);
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
