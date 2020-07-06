import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_page.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AlternativeExerciseFivePros extends StatelessWidget {
  final int percentage1;
  final int percentage2;
  final int percentage3;
  final int cbIndex1;
  final int cbIndex2;
  final int cbIndex3;

  final String rep1;
  final String rep2;
  final String rep3;

  const AlternativeExerciseFivePros(
      {Key key,
      this.percentage1,
      this.percentage2,
      this.percentage3,
      this.cbIndex1,
      this.cbIndex2,
      this.cbIndex3,
      this.rep1,
      this.rep2,
      this.rep3})
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
                              ? LightBodyWeightAssistance(
                                  liftIndex: index,
                                  title: 'BodyWeight',
                                  cbIndex1: cbIndex1,
                                  cbIndex2: cbIndex2,
                                  cbIndex3: cbIndex3,
                                )
                              : FiveThreeOne(
                                  title: '5\'s Pros',
                                  liftIndex: index,
                                  percentage1: percentage1,
                                  percentage2: percentage2,
                                  percentage3: percentage3,
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
