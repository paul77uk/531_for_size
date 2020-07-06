import 'package:five_three_one_forever_app/program_title/program_title_db/day_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:flutter/material.dart';

class DayDialog {
  final txtDayNum = TextEditingController();

  Widget buildAlert(BuildContext context, DayModel dayModel, bool isNew) {
    DbHelper helper = DbHelper();
    helper.openDb();
    if (!isNew) {
      txtDayNum.text = dayModel.dayNum;
    }
    return AlertDialog(
      title: Text((isNew) ? 'New Day' : 'Edit Day Number'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: SingleChildScrollView(
        child: Column(children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: txtDayNum,
            decoration: InputDecoration(hintText: 'Day'),
          ),
          RaisedButton(
            color: ThemeData.dark().accentColor,
            child: Text(
              'Save Day',
              style: TextStyle(color: ThemeData.dark().primaryColor),
            ),
            onPressed: () {
              dayModel.dayNum = txtDayNum.text;
              dayModel.currentDay = 'false';
              helper.insertDayNum(dayModel);
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
