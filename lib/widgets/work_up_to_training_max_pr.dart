import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class TrainingMaxPr extends StatefulWidget {
  final int liftIndex;

  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final int cbIndex4;
  final int cbIndex5;
  final int cbIndex6;
  final int cbIndex7;
  final int cbIndex8;
  final int cbIndex9;
  final int cbIndex10;
  final String title;

  const TrainingMaxPr(
      {Key key,
      this.liftIndex,
      this.cbIndex1,
      this.cbIndex2,
      this.cbIndex3,
      this.title,
      this.cbIndex4,
      this.cbIndex5,
      this.cbIndex6,
      this.cbIndex7,
      this.cbIndex8,
      this.cbIndex9,
      this.cbIndex10})
      : super(key: key);

  @override
  _TrainingMaxPrState createState() => _TrainingMaxPrState();
}

class _TrainingMaxPrState extends State<TrainingMaxPr> {
  @override
  Widget build(BuildContext context) {
    String PR;
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 6),
            child: Center(
                child: Text(
              widget.title,
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
                DataCell(Text('10%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 10)}'), //index 3, 65%
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
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
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('2'),
                )),
                DataCell(Text('20%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 20)}'), // index 3, percent 75
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
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
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('3'),
                )),
                DataCell(Text('30%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 30)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
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
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('4'),
                )),
                DataCell(Text('40%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 40)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('5'),
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
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('5'),
                )),
                DataCell(Text('50%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 50)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('3'),
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
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('6'),
                )),
                DataCell(Text('60%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 60)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('3'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.cbIndex6].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.cbIndex6].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('7'),
                )),
                DataCell(Text('70%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 70)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('1'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.cbIndex7].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.cbIndex7].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('8'),
                )),
                DataCell(Text('80%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 80)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('1'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.cbIndex8].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.cbIndex8].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('9'),
                )),
                DataCell(Text('90%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 90)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('1'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.cbIndex9].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.cbIndex9].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('10'),
                )),
                DataCell(Text('100%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 100)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('PR Set'),
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Checkbox(
                      checkColor: ThemeData.dark().primaryColorDark,
                      value: model.checkboxes[widget.cbIndex10].trueOrFalse ==
                              'false'
                          ? false
                          : true,
                      onChanged: (bool value) {
                        setState(() {
                          CheckBoxClass checkBoxClass =
                              CheckBoxClass(trueOrFalse: value.toString());
                          checkBoxClass.id =
                              model.checkboxes[widget.cbIndex10].id;
                          model.updateCheckbox(checkBoxClass);

                          print(checkBoxClass.trueOrFalse);
                        });
                      }),
                )),
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'PR:',
                style: TextStyle(
                    color: ThemeData.dark().accentColor, fontSize: 16),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 58,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) => PR = value,
                  // validator: _validateLift,
                  // initialValue: widget.editedContact?.lift,
                  decoration: InputDecoration(
                    // labelText: '     PR',
                    // hintText: 'PR',
                    // labelStyle: TextStyle(color: ThemeData.dark().accentColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 100,
                height: 58,
                child: RaisedButton(
                    color: ThemeData.dark().accentColor,
                    onPressed: () {
                      model.newPr(PR, widget.liftIndex, 100); // percent 85
                      Scaffold.of(context).showSnackBar(SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: ThemeData.dark().accentColor,
                        duration: Duration(seconds: 5),
                        content: Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Text("${model.text}",
                              textAlign: TextAlign.center),
                        ),
                      ));
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: ThemeData.dark().primaryColor, fontSize: 16),
                    )),
              )
            ],
          ),
          Divider(
            height: 0,
          ),
        ],
      );
    });
  }
}
