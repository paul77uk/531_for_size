import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_and_total_reps.dart';
import 'package:five_three_one_forever_app/widgets/alternative_exercise_one_set.dart';
import 'package:five_three_one_forever_app/widgets/choose_exercise.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BuildingABiggerYokeDayFourPage extends StatefulWidget {
  @override
  _BuildingABiggerYokeDayFourPageState createState() =>
      _BuildingABiggerYokeDayFourPageState();
}

class _BuildingABiggerYokeDayFourPageState
    extends State<BuildingABiggerYokeDayFourPage> {
  Future<SharedPreferences> _sPrefs = SharedPreferences.getInstance();

  int exerciseIndexPush;
  String exerciseNamePush;
  int exerciseIndexPull;
  String exerciseNamePull;
  int exerciseIndexSLC;
  String exerciseNameSLC;

  Future<dynamic> getExercisePushIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexPush = prefs.getInt('bbyw2d4pushIndex');
    });
  }

  Future<dynamic> getExercisePushName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePush = prefs.getString('bbyw2d4pushName');
    });
  }

  Future<dynamic> getExercisePullIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexPull = prefs.getInt('bbyw2d4pullIndex');
    });
  }

  Future<dynamic> getExercisePullName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePull = prefs.getString('bbyw2d4pullName');
    });
  }

  Future<dynamic> getExerciseSLCIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexSLC = prefs.getInt('bbyw2d4slcIndex');
    });
  }

  Future<dynamic> getExerciseSLCName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNameSLC = prefs.getString('bbyw2d4slcName');
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   getExerciseIndex();
  // }

  @override
  Widget build(BuildContext context) {
    getExercisePushIndex();
    getExercisePushName();
    getExercisePullIndex();
    getExercisePullName();
    getExerciseSLCIndex();
    getExerciseSLCName();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Power Clean',
            route: AlternativeExerciseOneSet(
              percentage1: 80,
              reps: '15-25',
              cbIndex1: 1,
            ),
          ),
          OneSet(
            liftIndex: 24,
            percentage1: 80,
            cbIndex1: 1,
            title: 'Total Reps',
            reps: '15-25',
          ),
          RouteTile(
            title: 'Squat',
            route: Alternative531AndTotalReps(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 494,
              cbIndex2: 495,
              cbIndex3: 496,
              cbIndex4: 497,
              cbIndex5: 498,
              cbIndex6: 499,
              cbIndex7: 500,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
              totalReps: '50',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 501,
            cbIndex2: 502,
            cbIndex3: 503,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 504,
            cbIndex2: 505,
            cbIndex3: 506,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneSet(
            liftIndex: 0,
            percentage1: 70,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25',
          ),
          // RouteTile(
          //   title: exerciseNamePush == null ? 'Push Ups' : exerciseNamePush,
          //   route: ChooseExercise(
          //       addExerciseIndex: 'bbyw2d4pushIndex',
          //       addExerciseName: 'bbyw2d4pushName',
          //       ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPush == null ? 11 : exerciseIndexPush,
            percentage1: 70,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title: exerciseNamePull == null ? 'Kroc Row' : exerciseNamePull,
          //   route: ChooseExercise(
          //       addExerciseIndex: 'bbyw2d4pullIndex',
          //       addExerciseName: 'bbyw2d4pullName',
          //       ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPull == null ? 19 : exerciseIndexPull,
            percentage1: 70,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title: exerciseNameSLC == null ? 'Ab Wheel' : exerciseNameSLC,
          //   route: ChooseExercise(
          //       addExerciseIndex: 'bbyw2d4slcIndex',
          //       addExerciseName: 'bbyw2d4slcName',
          //       ),
          // ),
          OneSet(
            liftIndex: exerciseIndexSLC == null ? 12 : exerciseIndexSLC,
            percentage1: 70,
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
      ),
    );
  }
}
