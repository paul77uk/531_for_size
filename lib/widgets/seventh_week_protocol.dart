import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class SeventhWeekProtocol extends StatelessWidget {
  const SeventhWeekProtocol({Key key, this.lift, this.index}) : super(key: key);

  final String lift;

  final int index;

  @override
  Widget build(BuildContext context) {
    String PR;

    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Center(
                child: Text(
              lift,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          Divider(),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: DataTable(
              // columnSpacing: 56.0,
              // horizontalMargin: 24.0,
              columns: [
                DataColumn(label: TextWidget(title: 'SET')),
                DataColumn(label: TextWidget(title: '%')),
                DataColumn(label: TextWidget(title: 'WEIGHT')),
                DataColumn(label: TextWidget(title: 'MAX')),
                DataColumn(label: TextWidget(title: 'DELOAD')),
                DataColumn(label: TextWidget(title: 'PR')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(TextWidget(title: '1')),
                  DataCell(TextWidget(title: '70%')),
                  DataCell(TextWidget(
                      title: '${model.percentageOfTrainingMax(index, 70)}')),
                  DataCell(TextWidget(title: '5')),
                  DataCell(TextWidget(title: '5')),
                  DataCell(TextWidget(title: '5')),
                ]),
                DataRow(cells: [
                  DataCell(TextWidget(title: '2')),
                  DataCell(TextWidget(title: '80%')),
                  DataCell(TextWidget(
                      title: '${model.percentageOfTrainingMax(index, 80)}')),
                  DataCell(TextWidget(title: '5')),
                  DataCell(TextWidget(title: '3 - 5')),
                  DataCell(TextWidget(title: '5')),
                ]),
                DataRow(cells: [
                  DataCell(TextWidget(title: '3')),
                  DataCell(TextWidget(title: '90%')),
                  DataCell(TextWidget(
                      title: '${model.percentageOfTrainingMax(index, 90)}')),
                  DataCell(TextWidget(title: '5')),
                  DataCell(TextWidget(title: '1')),
                  DataCell(TextWidget(title: '5')),
                ]),
                DataRow(cells: [
                  DataCell(TextWidget(title: '4')),
                  DataCell(TextWidget(title: '100%')),
                  DataCell(TextWidget(
                      title: '${model.percentageOfTrainingMax(index, 100)}')),
                  DataCell(TextWidget(title: '3 - 5')),
                  DataCell(TextWidget(title: '1')),
                  DataCell(TextWidget(title: 'PR')),
                ]),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'PR REPS:',
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
                      model.newPr(PR, index, 100);
                      Scaffold.of(context).showSnackBar(SnackBar(
                        backgroundColor: ThemeData.dark().accentColor,
                        duration: Duration(seconds: 5),
                        content:
                            Text("${model.text}", textAlign: TextAlign.center),
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
          Divider(),
        ],
      );
    });
  }
}

class TextWidget extends StatelessWidget {
  final String title;

  const TextWidget({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 28),
    );
  }
}
