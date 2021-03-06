import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AssistanceTotalReps1 extends StatelessWidget {
  final String exercise;

  final String reps;

  const AssistanceTotalReps1({
    Key key,
    this.exercise,
    this.reps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 30),
        child: DataTable(
          headingRowHeight: 45,
          columnSpacing: 5,
          horizontalMargin: 30,
          columns: [
            DataColumn(label: Text('Exercise')),
            DataColumn(label: Text('Reps')),
            DataColumn(label: Text('Reps Completed')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(exercise),
              )),
              DataCell(Text(reps)),
              DataCell(Row(
                children: <Widget>[
                  Text('${model.numValue}'),
                  SizedBox(width: 5),
                  IconButton(
                    alignment: Alignment.center,
                    iconSize: 18,
                    padding: const EdgeInsets.all(0),
                    icon: Icon(Icons.add),
                    color: ThemeData.dark().accentColor,
                    onPressed: () {
                      model.addReps();

                      print(model.numValue);
                    },
                  ),
                  IconButton(
                    alignment: Alignment.centerLeft,
                    iconSize: 18,
                    padding: const EdgeInsets.all(0),
                    icon: Icon(Icons.refresh),
                    color: ThemeData.dark().accentColor,
                    onPressed: () {
                      model.minusReps();

                      print(model.numValue);
                    },
                  )
                ],
              )),
            ]),
          ],
        ),
      );
    });
  }
}
