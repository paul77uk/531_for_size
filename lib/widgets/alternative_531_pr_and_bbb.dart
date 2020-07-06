import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_model.dart';

import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Alternative531PRAndBBB extends StatefulWidget {
  final int percentage1;
  final int percentage2;
  final int percentage3;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final int cbIndex4;
  final int cbIndex5;
  final int cbIndex6;
  final int cbIndex7;
  final int cbIndex8;
  final int cbIndex9;
  final int cbIndex10;
  final int cbIndex11;

  final String rep1;
  final String rep2;
  final String rep3;

  final int liftIndexEx;

  const Alternative531PRAndBBB({
    Key key,
    this.percentage1,
    this.percentage2,
    this.percentage3,
    this.cbIndex1,
    this.cbIndex2,
    this.cbIndex3,
    this.rep1,
    this.rep2,
    this.rep3,
    this.cbIndex4,
    this.cbIndex5,
    this.cbIndex6,
    this.cbIndex7,
    this.cbIndex8,
    this.cbIndex9,
    this.cbIndex10,
    this.cbIndex11,
    this.liftIndexEx,
  }) : super(key: key);

  @override
  _Alternative531PRAndBBBState createState() => _Alternative531PRAndBBBState();
}

class _Alternative531PRAndBBBState extends State<Alternative531PRAndBBB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Alternative Exercises',
            style: TextStyle(color: Colors.grey[300]),
          ),
        ),
        body: ScopedModelDescendant<ContactsModel>(
            builder: (context, child, model) {
          return ListView.builder(
            itemCount: model.contacts.length,
            itemBuilder: (context, int index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Center(child: Text(model.contacts[index].lift)),
                    onTap: () {
                      setState(() {
                        ExerciseIndexClass editedExercise =
                            ExerciseIndexClass(exerciseIndex: index);

                        editedExercise.id =
                            model.exerciseindexClass[widget.liftIndexEx].id;
                        model.updateExerciseIndex(editedExercise);
                      });
                      var newIndex = model
                          .exerciseindexClass[widget.liftIndexEx].exerciseIndex;
                      print(model.contacts[newIndex].lift);
                      return Navigator.pop(context);

                      // push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => BoringButBigDayOnePage(
                      //             title: model.contacts[index].lift,
                      //             liftIndex: index,
                      //           )),
                      // );
                    },
                  ),
                  Divider(
                    height: 0,
                  ),
                ],
              );
            },
          );
        }));
  }
}
