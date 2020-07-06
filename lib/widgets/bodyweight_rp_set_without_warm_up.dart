import 'package:five_three_one_forever_app/data/checkbox_db/checkbox.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BodyWeightRestPauseSetWithoutWarmUp extends StatefulWidget {
  final int liftIndex;

  final int cbIndex1;

  final String title;

  const BodyWeightRestPauseSetWithoutWarmUp({
    Key key,
    this.liftIndex,
    this.cbIndex1,
    this.title,
  }) : super(key: key);

  @override
  BodyWeightRestPauseSetWithoutWarmUpState createState() =>
      BodyWeightRestPauseSetWithoutWarmUpState();
}

class BodyWeightRestPauseSetWithoutWarmUpState
    extends State<BodyWeightRestPauseSetWithoutWarmUp> {
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
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          )),
          Divider(
            height: 0,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: DataTable(
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
                  DataCell(Text('Working Set')),
                  DataCell(Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('RP Set'),
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
          ),
          Column(
            children: <Widget>[
              Divider(
                height: 0,
              ),
              ListTile(
                  title: Text(
                'Reps to beat: ${model.contacts[widget.liftIndex].repMax}',
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
                          model.bodyWeightRpPr(
                              PR, widget.liftIndex); // percent 85
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
