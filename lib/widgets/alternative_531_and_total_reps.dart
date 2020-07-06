import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_page.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_bodyweight.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Alternative531AndTotalReps extends StatelessWidget {
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

  final String rep1;
  final String rep2;
  final String rep3;
  final String totalReps;

  const Alternative531AndTotalReps(
      {Key key,
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
      this.totalReps})
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
                                    LightBodyWeightAssistance(
                                      liftIndex: index,
                                      title: 'BodyWeight',
                                      cbIndex1: cbIndex1,
                                      cbIndex2: cbIndex2,
                                      cbIndex3: cbIndex3,
                                    ),
                                    OneSetBodyWeight(
                                      liftIndex: index,
                                      title: 'Total Reps',
                                      cbIndex1: cbIndex4,
                                      reps: totalReps,
                                    ),
                                  ],
                                )
                              : Column(
                                  children: <Widget>[
                                    WarmUp(
                                      liftIndex: index,
                                      cbIndex1: cbIndex1,
                                      cbIndex2: cbIndex2,
                                      cbIndex3: cbIndex3,
                                    ),
                                    FiveThreeOnePrSet(
                                      title: '531',
                                      liftIndex: index,
                                      percentage1: percentage1,
                                      percentage2: percentage2,
                                      percentage3: percentage3,
                                      cbIndex1: cbIndex4,
                                      cbIndex2: cbIndex5,
                                      cbIndex3: cbIndex6,
                                    ),
                                    OneSet(
                                      title: 'Total Reps',
                                      liftIndex: index,
                                      percentage1: percentage1,
                                      cbIndex1: cbIndex7,
                                      reps: totalReps,
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
