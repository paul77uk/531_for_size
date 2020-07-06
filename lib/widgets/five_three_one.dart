import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class FiveThreeOne extends StatefulWidget {
  final int liftIndex;
  final int percentage1;
  final int percentage2;
  final int percentage3;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final String title;
  final String rep1;
  final String rep2;
  final String rep3;

  const FiveThreeOne({
    Key key,
    this.liftIndex,
    this.percentage1,
    this.percentage2,
    this.percentage3,
    this.cbIndex1,
    this.cbIndex2,
    this.cbIndex3,
    this.title,
    this.rep1 = '5',
    this.rep2 = '5',
    this.rep3 = '5',
  }) : super(key: key);

  @override
  _FiveThreeOneState createState() => _FiveThreeOneState();
}

class _FiveThreeOneState extends State<FiveThreeOne> {
  @override
  Widget build(BuildContext context) {
    String PR;
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Column(
        children: <Widget>[
          WarmUp(
            liftIndex: widget.liftIndex,
            cbIndex1: 1287,
            cbIndex2: 1288,
            cbIndex3: 1289,
          ),
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
                DataCell(Text('${widget.percentage1}%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage1)}'), //index 3, 65%
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(widget.rep1),
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
                DataCell(Text('${widget.percentage2}%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage2)}'), // index 3, percent 75
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(widget.rep2),
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
                DataCell(Text('${widget.percentage3}%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage3)}'), // index 3, percent 85
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(widget.rep3),
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
