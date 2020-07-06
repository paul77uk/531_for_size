import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class OneSet extends StatefulWidget {
  final int liftIndex;
  final int percentage1;

  final int cbIndex1;

  final String title;
  final String reps;

  const OneSet({
    Key key,
    this.liftIndex,
    this.percentage1,
    this.cbIndex1,
    this.title,
    this.reps,
  }) : super(key: key);

  @override
  _OneSetState createState() => _OneSetState();
}

class _OneSetState extends State<OneSet> {
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
                  DataCell(Text('${widget.percentage1}%')),
                  DataCell(Text(
                      '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage1)}')),
                  DataCell(Text(widget.reps)),
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

                          print(checkBoxClass.trueOrFalse);
                        });
                      })),
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
