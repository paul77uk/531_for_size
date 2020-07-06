import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_five_pros.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_one_set.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_one_set_with_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/alternative_working_up_to_training_max.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/work_up_to_training_max_pr.dart';
import 'package:flutter/material.dart';

class BeachBodyDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Squat',
            route: AlternativeWorkingUpToTrainingMax(
                cbIndex1: 1,
                cbIndex2: 2,
                cbIndex3: 3,
                cbIndex4: 4,
                cbIndex5: 5,
                cbIndex6: 6,
                cbIndex7: 7,
                cbIndex8: 8,
                cbIndex9: 9,
                cbIndex10: 10,
                reps: 'AMRAP'),
          ),
          TrainingMaxPr(
            liftIndex: 0,
            title: 'TrainingMaxPr',
            cbIndex1: 1,
            cbIndex2: 2,
            cbIndex3: 3,
            cbIndex4: 4,
            cbIndex5: 5,
            cbIndex6: 6,
            cbIndex7: 7,
            cbIndex8: 8,
            cbIndex9: 9,
            cbIndex10: 10,
          ),
          RouteTile(
            title: 'Deadlift',
            route: AlternativeExerciseFivePros(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              cbIndex1: 1288,
              cbIndex2: 1289,
              cbIndex3: 1290,
              rep1: '5',
              rep2: '5',
              rep3: '5',
            ),
          ),
          FiveThreeOne(
            title: '5 Pros',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1288,
            cbIndex2: 1289,
            cbIndex3: 1290,
            rep1: '5',
            rep2: '5',
            rep3: '5',
          ),
          RouteTile(
            title: 'Press',
            route: AlternativeExerciseOneSetWithWarmUp(
              title: 'Total Reps',
              cbIndex1: 1,
              cbIndex2: 2,
              cbIndex3: 9,
              cbIndex4: 8,
              percentage1: 65,
              reps: '50',
            ),
          ),
          WarmUp(
            title: 'Warm Up',
            liftIndex: 3,
            cbIndex1: 4,
            cbIndex2: 5,
            cbIndex3: 6,
          ),
          OneSet(
            liftIndex: 3,
            title: 'Total Reps',
            cbIndex1: 7,
            percentage1: 65,
            reps: '50',
          ),
          RouteTile(
            title: 'Krow Row',
            route: AlternativeExerciseOneSet(
              cbIndex1: 1,
              percentage1: 65,
              reps: '100 each arm',
            ),
          ),
          OneSet(
            liftIndex: 19,
            title: 'Total Reps',
            cbIndex1: 1,
            percentage1: 65,
            reps: '100 each arm',
          ),
          RouteTile(
            title: 'Neck Harness',
            route: AlternativeExerciseOneSet(
              cbIndex1: 1,
              percentage1: 65,
              reps: '100 total reps',
            ),
          ),
          OneSet(
            liftIndex: 23,
            title: 'Total Reps',
            cbIndex1: 1,
            percentage1: 65,
            reps: '100 total reps',
          ),
          RouteTile(
            title: 'Conditioning - 3-4 days of easy conditioning.',
            route: ConditioningPage(),
          ),
          RouteTile(
            title: 'Notes',
            route: Notes(),
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(18)),
        ],
      ),
    );
  }
}
