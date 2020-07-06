import 'package:five_three_one_forever_app/data/exercise_index_db/exercise_index_model.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ChooseExercise extends StatefulWidget {
  final int addExerciseIndex;
  final String addExerciseName;

  const ChooseExercise({Key key, this.addExerciseIndex, this.addExerciseName})
      : super(key: key);
  @override
  _ChooseExerciseState createState() => _ChooseExerciseState();
}

class _ChooseExerciseState extends State<ChooseExercise> {
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
                        var exerciseIndexClass =
                            ExerciseIndexClass(exerciseIndex: index);
                        exerciseIndexClass.id = widget.addExerciseIndex;
                        model.updateExerciseIndex(exerciseIndexClass);

                        Navigator.pop(context);
                      });
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
