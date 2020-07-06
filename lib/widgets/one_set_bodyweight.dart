import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class OneSetBodyWeight extends StatefulWidget {
  final int liftIndex;

  final int cbIndex1;

  final String title;
  final String reps;

  const OneSetBodyWeight(
      {Key key,
      this.liftIndex,
      this.cbIndex1,
      this.title,
      this.reps = '100 - 200'})
      : super(key: key);

  @override
  OneSetBodyWeightState createState() => OneSetBodyWeightState();
}

class OneSetBodyWeightState extends State<OneSetBodyWeight> {
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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )),
          Divider(
            height: 0,
          ),
          DataTable(
            columnSpacing: 5,
            horizontalMargin: 20,
            headingRowHeight: 45,
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
