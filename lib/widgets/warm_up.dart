import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class WarmUp extends StatefulWidget {
  final String title;
  final int liftIndex;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;

  const WarmUp({
    Key key,
    this.title = 'Warm Up',
    this.liftIndex,
    this.cbIndex1,
    this.cbIndex2,
    this.cbIndex3,
  }) : super(key: key);

  @override
  _WarmUpState createState() => _WarmUpState();
}

class _WarmUpState extends State<WarmUp> {
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
          FittedBox(
            fit: BoxFit.fitWidth,
            child: DataTable(
              columns: [
                DataColumn(label: Text('Set')),
                DataColumn(label: Text('%')),
                DataColumn(label: Text('Weight')),
                DataColumn(label: Text('Reps')),
                DataColumn(label: Text('Completed')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('40%')),
                  DataCell(Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 40)}')),
                  DataCell(Text('5')),
                  DataCell(Checkbox(
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
                      })),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('50%')),
                  DataCell(Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 50)}')),
                  DataCell(Text('5')),
                  DataCell(Checkbox(
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
                      })),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('60%')),
                  DataCell(Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, 60)}')),
                  DataCell(Text('5')),
                  DataCell(Checkbox(
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
                      })),
                ]),
              ],
            ),
          ),
          // RaisedButton(
          //   color: ThemeData.dark().accentColor,
          //   onPressed: () {},
          //   child: Text(
          //     'Edit',
          //     style: TextStyle(color: ThemeData.dark().primaryColor),
          //   ),
          // ),
          Divider(height: 0),
        ],
      );
    });
  }
}
