import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_page.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/one_set_bodyweight.dart';
import 'package:five_three_one_forever_app/widgets/three_set_assistance.dart';
import 'package:five_three_one_forever_app/widgets/work_up_to_training_max_pr.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AlternativeTrainingMaxAnd3x5 extends StatelessWidget {
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
  final int cbIndex12;
  final int cbIndex13;
  final String reps;
  final String reps2;
  final int percentage;

  const AlternativeTrainingMaxAnd3x5(
      {Key key,
      this.cbIndex1,
      this.cbIndex2,
      this.cbIndex3,
      this.cbIndex4,
      this.cbIndex5,
      this.cbIndex6,
      this.cbIndex7,
      this.cbIndex8,
      this.cbIndex9,
      this.cbIndex10,
      this.reps,
      this.percentage,
      this.cbIndex11,
      this.cbIndex12,
      this.cbIndex13,
      this.reps2})
      : super(key: key);

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
              model.contacts[index];

              return Column(
                children: <Widget>[
                  ListTile(
                    title: Center(child: Text(model.contacts[index].lift)),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlternativeExercisePage(
                          title: model.contacts[index].lift,
                          liftIndex: index,
                          exercise: model.contacts[index].trainingMax == 'BW'
                              ? Column(
                                  children: <Widget>[
                                    OneSetBodyWeight(
                                      title: 'AMRAP',
                                      liftIndex: index,
                                      cbIndex1: cbIndex1,
                                      reps: reps,
                                    ),
                                    LightBodyWeightAssistance(
                                      title: '3 x 10',
                                      liftIndex: index,
                                      cbIndex1: cbIndex2,
                                      cbIndex2: cbIndex3,
                                      cbIndex3: cbIndex4,
                                    ),
                                  ],
                                )
                              : Column(
                                  children: <Widget>[
                                    TrainingMaxPr(
                                      title: 'Work up to Training Max',
                                      liftIndex: index,
                                      cbIndex1: cbIndex1,
                                      cbIndex2: cbIndex2,
                                      cbIndex3: cbIndex3,
                                      cbIndex4: cbIndex4,
                                      cbIndex5: cbIndex5,
                                      cbIndex6: cbIndex6,
                                      cbIndex7: cbIndex7,
                                      cbIndex8: cbIndex8,
                                      cbIndex9: cbIndex9,
                                      cbIndex10: cbIndex10,
                                    ),
                                    ThreeSetAssistance(
                                      title: '3 x 5',
                                      liftIndex: index,
                                      percentage: percentage,
                                      cbIndex1: cbIndex11,
                                      cbIndex2: cbIndex12,
                                      cbIndex3: cbIndex13,
                                      reps: reps2,
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
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
