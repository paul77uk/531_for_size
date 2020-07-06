import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_page.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/three_set_assistance.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AlternativeLightAssistance extends StatelessWidget {
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;

  const AlternativeLightAssistance({
    Key key,
    this.cbIndex1,
    this.cbIndex2,
    this.cbIndex3,
  }) : super(key: key);

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
                                      title: '3 x 10',
                                      cbIndex1: cbIndex1,
                                      cbIndex2: cbIndex2,
                                      cbIndex3: cbIndex3,
                                    ),
                                  ],
                                )
                              : ThreeSetAssistance(
                                  title: '3 x 10',
                                  liftIndex: index,
                                  percentage: 50,
                                  cbIndex1: cbIndex1,
                                  cbIndex2: cbIndex2,
                                  cbIndex3: cbIndex3,
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
