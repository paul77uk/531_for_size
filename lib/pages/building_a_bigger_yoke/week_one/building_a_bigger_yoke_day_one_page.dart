import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/choose_exercise.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BuildingABiggerYokeDayOnePage extends StatefulWidget {
  @override
  _BuildingABiggerYokeDayOnePageState createState() =>
      _BuildingABiggerYokeDayOnePageState();
}

class _BuildingABiggerYokeDayOnePageState
    extends State<BuildingABiggerYokeDayOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        ScopedModelDescendant<ContactsModel>(builder: (context, child, model) {
      int exerciseIndexdata = model.exerciseindexClass[0].exerciseIndex;
      int exerciseIndexdata2 = model.exerciseindexClass[1].exerciseIndex;
      return ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: model.contacts[exerciseIndexdata].lift,
            route: ChooseExercise(
              addExerciseIndex: exerciseIndexdata,
              addExerciseName: model.contacts[exerciseIndexdata].lift,
            ),
          ),
          // RouteTile(
          //   title: 'Press',
          //   route: Alternative531AndTotalReps(
          //     percentage1: 65,
          //     percentage2: 75,
          //     percentage3: 85,
          //     cbIndex1: 494,
          //     cbIndex2: 495,
          //     cbIndex3: 496,
          //     cbIndex4: 497,
          //     cbIndex5: 498,
          //     cbIndex6: 499,
          //     cbIndex7: 500,
          //     rep1: '5',
          //     rep2: '5',
          //     rep3: '5+',
          //     totalReps: '50',
          //   ),
          // ),
          WarmUp(
            liftIndex: exerciseIndexdata,
            cbIndex1: 501,
            cbIndex2: 502,
            cbIndex3: 503,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: exerciseIndexdata,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 504,
            cbIndex2: 505,
            cbIndex3: 506,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneSet(
            liftIndex: exerciseIndexdata,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '50',
          ),
          RouteTile(
            title: model.contacts[exerciseIndexdata2].lift,
            route: ChooseExercise(
              addExerciseIndex: exerciseIndexdata2,
              addExerciseName: model.contacts[exerciseIndexdata2].lift,
            ),
          ),
          OneSet(
            liftIndex: exerciseIndexdata2,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          RouteTile(
            title: model.contacts[exerciseIndexdata2].lift,
            route: ChooseExercise(
              addExerciseIndex: exerciseIndexdata2,
              addExerciseName: model.contacts[exerciseIndexdata2].lift,
            ),
          ),
          OneSet(
            liftIndex: exerciseIndexdata2,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          RouteTile(
            title: model.contacts[exerciseIndexdata2].lift,
            route: ChooseExercise(
              addExerciseIndex: exerciseIndexdata2,
              addExerciseName: model.contacts[exerciseIndexdata2].lift,
            ),
          ),
          OneSet(
            liftIndex: exerciseIndexdata2,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          RouteTile(
            title: 'Notes',
            route: Notes(),
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(18)),
        ],
      );
    }));
  }
}
