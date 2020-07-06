import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_page.dart';
import 'package:five_three_one_forever_app/widgets/two_amrap_bodyweight.dart';
import 'package:five_three_one_forever_app/widgets/two_amrap_sets.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AlternativeExerciseTwoAMRAPsets extends StatelessWidget {
  final int percentage1;
  final int cbIndex1;
  final int cbIndex2;

  const AlternativeExerciseTwoAMRAPsets(
      {Key key, this.percentage1, this.cbIndex1, this.cbIndex2})
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
                              ? TwoAmrapBodyweight(
                                  title: 'AMRAP',
                                  liftIndex: index,
                                  cbIndex1: cbIndex1,
                                  cbIndex2: cbIndex2,
                                )
                              : TwoAmrap(
                                  title: 'AMRAP',
                                  liftIndex: index,
                                  percentage1: percentage1,
                                  cbIndex1: cbIndex1,
                                  cbIndex2: cbIndex2,
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
