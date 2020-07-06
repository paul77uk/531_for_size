import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_model.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Alternative5x10 extends StatefulWidget {
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final int cbIndex4;
  final int cbIndex5;
  final int liftIndexEx;

  const Alternative5x10({
    Key key,
    this.cbIndex1,
    this.cbIndex2,
    this.cbIndex3,
    this.cbIndex4,
    this.cbIndex5,
    this.liftIndexEx,
  }) : super(key: key);

  @override
  _Alternative5x10State createState() => _Alternative5x10State();
}

class _Alternative5x10State extends State<Alternative5x10> {
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
                      //   return Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => AlternativeExercisePage(
                      //       title: model.contacts[index].lift,
                      //       liftIndex: index,
                      //       exercise: model.contacts[index].trainingMax == 'BW'
                      //           ? Column(
                      //               children: <Widget>[
                      //                 BodyWeightAssistance(
                      //                   liftIndex: index,
                      //                   title: '5 x 10',
                      //                   cbIndex1: cbIndex1,
                      //                   cbIndex2: cbIndex2,
                      //                   cbIndex3: cbIndex3,
                      //                   cbIndex4: cbIndex4,
                      //                   cbIndex5: cbIndex5,
                      //                   reps: '10',
                      //                 ),
                      //               ],
                      //             )
                      //           : BBB(
                      //               title: '5 x 10',
                      //               liftIndex: index,
                      //               percentage: 50,
                      //               cbIndex1: cbIndex1,
                      //               cbIndex2: cbIndex2,
                      //               cbIndex3: cbIndex3,
                      //               cbIndex4: cbIndex4,
                      //               cbIndex5: cbIndex5,
                      //               reps: '10',
                      //             ),
                      //     ),
                      //   ),
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
