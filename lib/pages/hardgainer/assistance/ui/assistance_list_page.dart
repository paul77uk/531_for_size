import 'dart:async';

import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/assistance_work.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/create_assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/edit_assistance_page.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:scoped_model/scoped_model.dart';

class AssistanceListPage extends StatefulWidget {
  final int assistanceIndex;

  const AssistanceListPage({Key key, this.assistanceIndex}) : super(key: key);

  @override
  _AssistanceListPageState createState() => _AssistanceListPageState();
}

class _AssistanceListPageState extends State<AssistanceListPage> {
  bool chkVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BBBBT Assistance Work'),
      ),
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        if (model.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: model.assistanceWork.length,
// Runs & builds every single list item
            itemBuilder: (context, index) {
              return Slidable(
                delegate: SlidableBehindDelegate(),
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () {
                      model.deleteAssistanceWork(model.assistanceWork[index]);
                    },
                  )
                ],
                child: Column(
                  children: <Widget>[
                    BBB(title: '${model.assistanceWork[index].exercise}'),
                    ListTile(
                      title: Text(
                        '${model.assistanceWork[index].exercise} ${model.assistanceWork[index].weight} x ${model.assistanceWork[index].reps}',
                        textAlign: TextAlign.center,
                      ),
                      trailing: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value: model.assistanceWork[index].isChecked == false
                            ? false
                            : true,
                        onChanged: (value) {
                          AssistanceWork assistanceWork = AssistanceWork(
                              isChecked: value,
                              exercise: model.assistanceWork[index].exercise,
                              weight: model.assistanceWork[index].weight,
                              reps: model.assistanceWork[index].reps);
                          assistanceWork.id = model.assistanceWork[index].id;
                          model.updateAssistanceWork(assistanceWork);
                        },
                      ),

                      //   Checkbox(
                      // checkColor: ThemeData.dark().primaryColorDark,
                      // value:
                      //     model.checkboxes[widget.checkIndex0].trueOrFalse ==
                      //             'false'
                      //         ? false
                      //         : true,
                      // onChanged: (bool value) {
                      //   setState(() {
                      //     CheckBoxClass checkBoxClass =
                      //         CheckBoxClass(trueOrFalse: value.toString());
                      //     checkBoxClass.id =
                      //         model.checkboxes[widget.checkIndex0].id;
                      //     model.updateCheckbox(checkBoxClass);

                      //     print(checkBoxClass.trueOrFalse);
                      //     if (checkBoxClass.trueOrFalse == 'true') {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           fullscreenDialog: true,
                      //           builder: (context) => TimerPage(),
                      //         ),
                      //       );
                      //     }
                      //   });
                      // }),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => AssistanceEditPage(
                            editedAssistance: model.assistanceWork[index],
                          ),
                        ));
                      },
                    ),
                    Divider(height: 0),
                  ],
                ),
              );
            },
          );
        }
      }),
      persistentFooterButtons: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 108.0),
          child: ButtonBar(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.timer),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TimerHomePage()),
                      )),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssistanceCreatePage()),
                      )),
            ],
          ),
        )
      ],
    );
  }
}
