import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/contact/widget/timer.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BTMBenchDataTable extends StatefulWidget {
  const BTMBenchDataTable({
    Key key,
    this.lift,
    this.seventyPercent,
    this.eightyPercent,
    this.ninetyPercent,
    this.index2,
    this.fslOne,
    this.fslTwo,
    this.fslThree,
    this.fslFour,
    this.fslFive,
    this.fortyPercent,
    this.fiftyPercent,
    this.sixtyPercent,
    this.checkIndex0,
    this.checkIndex1,
    this.checkIndex2,
    this.checkIndex3,
    this.checkIndex4,
    this.checkIndex5,
    this.checkIndex6,
    this.checkIndex7,
    this.checkIndex8,
    this.checkIndex9,
    // this.checkIndex10,
  }) : super(key: key);

  final String lift;
  final String fortyPercent;
  final String fiftyPercent;
  final String sixtyPercent;
  final String seventyPercent;
  final String eightyPercent;
  final String ninetyPercent;
  final String fslOne;
  final String fslTwo;
  final String fslThree;
  final String fslFour;
  final String fslFive;
  final int index2;
  final int checkIndex0;
  final int checkIndex1;
  final int checkIndex2;
  final int checkIndex3;
  final int checkIndex4;
  final int checkIndex5;
  final int checkIndex6;
  final int checkIndex7;
  final int checkIndex8;
  final int checkIndex9;
  // final int checkIndex10;

  @override
  _BTMBenchDataTableState createState() => _BTMBenchDataTableState();
}

class _BTMBenchDataTableState extends State<BTMBenchDataTable> {
  var _checkboxValue1 = false;
  var _checkboxValue2 = false;
  var _checkboxValue3 = false;

  bool saveCheckBox(value) {
    bool checkboxState;
    if (value == true) {
      ContactsModel().updateCheckbox(CheckBoxClass(trueOrFalse: '0'));
      checkboxState = true;
    } else {
      checkboxState = false;
    }
    return checkboxState;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 6),
            child: Center(
                child: Text(
              widget.lift,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              'Warm Up',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 30),
            child: DataTable(
              headingRowHeight: 45,
              columnSpacing: 5,
              horizontalMargin: 30,
              columns: [
                DataColumn(label: Text('Set')),
                DataColumn(
                    label: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('%'),
                )),
                DataColumn(label: Text('Weight')),
                DataColumn(label: Text('Reps')),
                DataColumn(label: Text('Completed')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('1'),
                  )),
                  DataCell(Text('40%')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('${widget.fortyPercent}'),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('5'),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value:
                            model.checkboxes[widget.checkIndex0].trueOrFalse ==
                                    'false'
                                ? false
                                : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.checkIndex0].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                            if (checkBoxClass.trueOrFalse == 'true') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => TimerPage(),
                                ),
                              );
                            }
                          });
                        }),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('2'),
                  )),
                  DataCell(Text('50%')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('${widget.fiftyPercent}'),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('5'),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value:
                            model.checkboxes[widget.checkIndex1].trueOrFalse ==
                                    'false'
                                ? false
                                : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.checkIndex1].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                            if (checkBoxClass.trueOrFalse == 'true') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => TimerPage(),
                                ),
                              );
                            }
                          });
                        }),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('3'),
                  )),
                  DataCell(Text('60%')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('${widget.sixtyPercent}'),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('5'),
                  )),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value:
                            model.checkboxes[widget.checkIndex2].trueOrFalse ==
                                    'false'
                                ? false
                                : true,
                        onChanged: (bool value) {
                          setState(() {
                            CheckBoxClass checkBoxClass =
                                CheckBoxClass(trueOrFalse: value.toString());
                            checkBoxClass.id =
                                model.checkboxes[widget.checkIndex2].id;
                            model.updateCheckbox(checkBoxClass);

                            print(checkBoxClass.trueOrFalse);
                            if (checkBoxClass.trueOrFalse == 'true') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => TimerPage(),
                                ),
                              );
                            }
                          });
                        }),
                  )),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 6),
            child: Center(
                child: Text(
              'BTM',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )),
          ),
          Divider(),
          DataTable(
            columnSpacing: 5,
            horizontalMargin: 20,
            headingRowHeight: 45,
            columns: [
              DataColumn(label: Text('Set')),
              DataColumn(
                  label: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text('%'),
              )),
              DataColumn(label: Text('Weight')),
              DataColumn(label: Text('Reps')),
              DataColumn(label: Text('Completed')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('1'),
                )),
                DataCell(Text('70%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.seventyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex3].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex3].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('2'),
                )),
                DataCell(Text('80%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.eightyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex4].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex4].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('3'),
                )),
                DataCell(Text('90%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.ninetyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex5].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex5].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('4'),
                )),
                DataCell(Text('90%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.ninetyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex6].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex6].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('5'),
                )),
                DataCell(Text('90%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.ninetyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex7].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex7].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('6'),
                )),
                DataCell(Text('90%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.ninetyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex8].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex8].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('7'),
                )),
                DataCell(Text('90%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('${widget.ninetyPercent}'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.checkIndex9].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.checkIndex9].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                          if (checkBoxClass.trueOrFalse == 'true') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => TimerPage(),
                              ),
                            );
                          }
                        });
                      }),
                )),
              ]),
            ],
          ),
        ],
      );
    });
  }
}
