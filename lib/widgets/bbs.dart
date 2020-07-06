import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BBS extends StatefulWidget {
  final String title;
  final int liftIndex;
  final int percentage;
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
  final String reps;

  const BBS(
      {Key key,
      this.title,
      this.liftIndex,
      this.percentage,
      this.cbIndex1,
      this.cbIndex2,
      this.cbIndex3,
      this.cbIndex4,
      this.cbIndex5,
      this.reps = '5',
      this.cbIndex6,
      this.cbIndex7,
      this.cbIndex8,
      this.cbIndex9,
      this.cbIndex10})
      : super(key: key);

  @override
  _BBSState createState() => _BBSState();
}

class _BBSState extends State<BBS> {
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
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('2'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('4'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('5'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('6'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('7'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('8'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('9'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
                        });
                      }),
                )),
              ]),
              DataRow(cells: [
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text('10'),
                )),
                DataCell(Text('${widget.percentage}')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
                )),
                DataCell(Text(widget.reps)),
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
