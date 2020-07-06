import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_five_pros.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_one_set.dart';
import 'package:five_three_one_forever_app/widgets/alternative_training_max_and_three_x_five.dart';
import 'package:five_three_one_forever_app/widgets/alternative_widowmaker.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_bodyweight.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/three_set_assistance.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:five_three_one_forever_app/widgets/work_up_to_training_max_pr.dart';
import 'package:flutter/material.dart';

class BeachBodyDayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Clean',
            route: AlternativeTrainingMaxAnd3x5(
              percentage: 85,
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
              cbIndex11: 11,
              cbIndex12: 12,
              cbIndex13: 13,
              reps: 'AMRAP',
              reps2: '5',
            ),
          ),
          TrainingMaxPr(
            liftIndex: 24,
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
          ThreeSetAssistance(
            title: '3 x 5',
            liftIndex: 24,
            percentage: 85,
            cbIndex1: 11,
            cbIndex2: 12,
            cbIndex3: 13,
            reps: '5',
          ),
          RouteTile(
            title: 'Squat',
            route: AlternativeWidowMaker(
              cbIndex1: 14,
              percentage1: 75,
              reps: 'AMRAP',
              reps2: '15+',
            ),
          ),
          WidowMakerPr(
            liftIndex: 0,
            title: 'WidowMaker',
            cbIndex: 15,
            percentage: 75,
            reps: '15+',
          ),
          NewPRWidget(
            index: 0,
            percentage: 75,
          ),
          RouteTile(
            title: 'Press',
            route: AlternativeExerciseFivePros(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
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
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1288,
            cbIndex2: 1289,
            cbIndex3: 1290,
            rep1: '5',
            rep2: '5',
            rep3: '5',
          ),
          RouteTile(
            title: 'Rope Chin-Up',
            route: AlternativeExerciseOneSet(
              cbIndex1: 1,
              percentage1: 75,
              reps: '50 total reps',
            ),
          ),
          OneSetBodyWeight(
            liftIndex: 28,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '50 total reps',
          ),
          RouteTile(
            title: 'Neck Harness',
            route: AlternativeExerciseOneSet(
              cbIndex1: 1,
              percentage1: 75,
              reps: '100 total reps',
            ),
          ),
          OneSet(
            liftIndex: 23,
            title: 'Total Reps',
            cbIndex1: 1,
            percentage1: 75,
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
