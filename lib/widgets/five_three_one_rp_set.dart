import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class RestPauseSet extends StatefulWidget {
  final int liftIndex;
  final int percentage1;
  final int percentage2;
  final int percentage3;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final String reps1;
  final String reps2;
  final String reps3;
  final String title;

  const RestPauseSet({
    Key key,
    this.liftIndex,
    this.percentage1,
    this.percentage2,
    this.percentage3,
    this.cbIndex1,
    this.cbIndex2,
    this.cbIndex3,
    this.title,
    this.reps1 = '5',
    this.reps2 = '5',
    this.reps3 = 'RP Set',
  }) : super(key: key);

  @override
  _RestPauseSetState createState() => _RestPauseSetState();
}

class _RestPauseSetState extends State<RestPauseSet> {
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
                DataCell(Text('${widget.percentage1}%')),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage1)}'), //index 3, 65%
                )),
                DataCell(Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(widget.reps1),
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
                  child: Text(widget.reps2),
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
                  child: Text(widget.reps3),
                )),
                DataCell(
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Checkbox(
                          checkColor: ThemeData.dark().primaryColorDark,
                          value:
                              model.checkboxes[widget.cbIndex3].trueOrFalse ==
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
                          })),
                ),
              ]),
            ],
          ),
          Column(
            children: <Widget>[
              Divider(
                height: 0,
              ),
              ListTile(
                  title: Text(
                'Reps to beat: ${model.repsToBeat(widget.liftIndex, widget.percentage3)}',
                textAlign: TextAlign.center,
                style: TextStyle(color: ThemeData.dark().accentColor),
              )),
              Divider(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SET 3 PR:',
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
                          model.newPr(PR, widget.liftIndex,
                              widget.percentage3); // percent 85
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
                              color: ThemeData.dark().primaryColor,
                              fontSize: 16),
                        )),
                  )
                ],
              ),
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
