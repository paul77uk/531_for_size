import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class OneSetWarmUp extends StatefulWidget {
  final int liftIndex;
  final int cbIndex1;
  final int percentage;
  final String title;

  const OneSetWarmUp({
    Key key,
    this.liftIndex,
    this.cbIndex1,
    this.percentage = 50,
    this.title = 'Warm Up',
  }) : super(key: key);

  @override
  _OneSetWarmUpState createState() => _OneSetWarmUpState();
}

class _OneSetWarmUpState extends State<OneSetWarmUp> {
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
                  DataCell(Text(widget.percentage.toString())),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                        '${model.percentageOfTrainingMax(widget.liftIndex, widget.percentage)}'),
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
                          });
                        }),
                  )),
                ]),
              ],
            ),
          ),
        ],
      );
    });
  }
}
