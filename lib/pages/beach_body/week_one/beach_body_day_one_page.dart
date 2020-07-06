import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/widgets/alternative_exercise_five_pros.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_one_set.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_two_amrap_sets.dart';
import 'package:five_three_one_forever_app/widgets/alternative_working_up_to_training_max.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/two_amrap_sets.dart';
import 'package:five_three_one_forever_app/widgets/work_up_to_training_max_pr.dart';
import 'package:flutter/material.dart';

class BeachBodyDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Squat',
            route: AlternativeExerciseFivePros(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
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
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1288,
            cbIndex2: 1289,
            cbIndex3: 1290,
            rep1: '5',
            rep2: '5',
            rep3: '5',
          ),
          RouteTile(
            title: 'Clean',
            route: AlternativeExerciseTwoAMRAPsets(
              percentage1: 70,
              cbIndex1: 1288,
              cbIndex2: 1289,
            ),
          ),
          TwoAmrap(
            title: 'AMRAP',
            liftIndex: 24,
            cbIndex1: 1,
            cbIndex2: 2,
            percentage1: 70,
          ),
          RouteTile(
            title: 'Press',
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
            liftIndex: 3,
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
            title: 'Fat Grip/ Bar Curl',
            route: AlternativeExerciseOneSet(
              cbIndex1: 1,
              percentage1: 70,
              reps: '50-100 total reps',
            ),
          ),
          OneSet(
            liftIndex: 23,
            title: 'Total Reps',
            cbIndex1: 1,
            percentage1: 70,
            reps: '50-100 total reps',
          ),
          RouteTile(
            title: 'Neck Harness',
            route: AlternativeExerciseOneSet(
              cbIndex1: 1,
              percentage1: 70,
              reps: '100 total reps',
            ),
          ),
          OneSet(
            liftIndex: 27,
            title: 'Total Reps',
            cbIndex1: 1,
            percentage1: 70,
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
