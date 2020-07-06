import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class NewPRWidget extends StatelessWidget {
  const NewPRWidget({Key key, this.index, this.percentage}) : super(key: key);

  final int index;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    String PR;
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      return Column(
        children: <Widget>[
          Divider(
            height: 0,
          ),
          ListTile(
              title: Text(
            'Reps to beat: ${model.repsToBeat(index, percentage) - 1}',
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
                'AMRAP:',
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
                      model.newPr(PR, index, percentage);
                      Scaffold.of(context).showSnackBar(SnackBar(
                        backgroundColor: ThemeData.dark().accentColor,
                        duration: Duration(seconds: 5),
                        content: Padding(
                          padding: const EdgeInsets.only(bottom: 45.0),
                          child: Text("${model.text}",
                              textAlign: TextAlign.center),
                        ),
                      ));
                      print(index);
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: ThemeData.dark().primaryColor, fontSize: 16),
                    )),
              )
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
