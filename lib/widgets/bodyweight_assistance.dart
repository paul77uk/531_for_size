import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BodyWeightAssistance extends StatefulWidget {
  final int liftIndex;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final int cbIndex4;
  final int cbIndex5;
  final String title;
  final String reps;

  const BodyWeightAssistance(
      {Key key,
      this.liftIndex,
      this.cbIndex1,
      this.title,
      this.cbIndex2,
      this.cbIndex3,
      this.cbIndex4,
      this.cbIndex5,
      this.reps = '10'})
      : super(key: key);

  @override
  BodyWeightAssistanceState createState() => BodyWeightAssistanceState();
}

class BodyWeightAssistanceState extends State<BodyWeightAssistance> {
  @override
  Widget build(BuildContext context) {
    String PR;
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Column(
        children: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )),
          Divider(
            height: 0,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: DataTable(
              columns: [
                DataColumn(label: Text('Set')),
                DataColumn(
                    label: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Reps'),
                )),
                DataColumn(label: Text('Completed')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.reps),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value: model.checkboxes[widget.cbIndex1].trueOrFalse ==
                                'false'
                            ? false
                            : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.cbIndex1].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                          });
                        }),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.reps),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value: model.checkboxes[widget.cbIndex2].trueOrFalse ==
                                'false'
                            ? false
                            : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.cbIndex2].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                          });
                        }),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.reps),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value: model.checkboxes[widget.cbIndex3].trueOrFalse ==
                                'false'
                            ? false
                            : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.cbIndex3].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                          });
                        }),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.reps),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value: model.checkboxes[widget.cbIndex4].trueOrFalse ==
                                'false'
                            ? false
                            : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.cbIndex4].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                          });
                        }),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.reps),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value: model.checkboxes[widget.cbIndex5].trueOrFalse ==
                                'false'
                            ? false
                            : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.cbIndex5].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                          });
                        }),
                  )),
                ]),
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
        ],
      );
    });
  }
}
