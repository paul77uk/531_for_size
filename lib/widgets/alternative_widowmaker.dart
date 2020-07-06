import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_page.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_bodyweight.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AlternativeWidowMaker extends StatelessWidget {
  final int percentage1;
  final String reps;
  final String reps2;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;
  final int cbIndex4;

  const AlternativeWidowMaker(
      {Key key,
      this.percentage1,
      this.reps,
      this.cbIndex1,
      this.reps2,
      this.cbIndex2,
      this.cbIndex3,
      this.cbIndex4})
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
                              ? OneSetBodyWeight(
                                  title: 'RP Set',
                                  liftIndex: index,
                                  reps: reps,
                                  cbIndex1: cbIndex1,
                                )
                              : Column(
                                  children: <Widget>[
                                    WarmUp(
                                      title: 'Warm Up',
                                      liftIndex: index,
                                      cbIndex1: cbIndex1,
                                      cbIndex2: cbIndex2,
                                      cbIndex3: cbIndex3,
                                    ),
                                    model.contacts[index].lift == 'Deadlift' ||
                                            model.contacts[index].lift ==
                                                'Squat' ||
                                            model.contacts[index].lift ==
                                                'Bent Row' ||
                                            model.contacts[index].lift ==
                                                'Kroc Row'
                                        ? WidowMakerPr(
                                            title: 'WidowMaker',
                                            liftIndex: index,
                                            percentage: percentage1,
                                            cbIndex: cbIndex4,
                                          )
                                        : OneRestPauseSet(
                                            title: 'RP Set',
                                            liftIndex: index,
                                            percentage1: percentage1,
                                            cbIndex1: cbIndex4,
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
