import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_and_total_reps.dart';
import 'package:five_three_one_forever_app/widgets/choose_exercise.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BuildingABiggerYokeDayThreePage extends StatefulWidget {
  @override
  _BuildingABiggerYokeDayThreePageState createState() =>
      _BuildingABiggerYokeDayThreePageState();
}

class _BuildingABiggerYokeDayThreePageState
    extends State<BuildingABiggerYokeDayThreePage> {
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
      exerciseIndexPush = prefs.getInt('bbyw3d3pushIndex');
    });
  }

  Future<dynamic> getExercisePushName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePush = prefs.getString('bbyw3d3pushName');
    });
  }

  Future<dynamic> getExercisePullIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexPull = prefs.getInt('bbyw3d3pullIndex');
    });
  }

  Future<dynamic> getExercisePullName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePull = prefs.getString('bbyw3d3pullName');
    });
  }

  Future<dynamic> getExerciseSLCIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexSLC = prefs.getInt('bbyw3d3slcIndex');
    });
  }

  Future<dynamic> getExerciseSLCName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNameSLC = prefs.getString('bbyw3d3slcName');
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
            title: 'Bench',
            route: Alternative531AndTotalReps(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
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
            liftIndex: 2,
            cbIndex1: 501,
            cbIndex2: 502,
            cbIndex3: 503,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 504,
            cbIndex2: 505,
            cbIndex3: 506,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneSet(
            liftIndex: 2,
            percentage1: 75,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '50',
          ),
          // RouteTile(
          //   title: exerciseNamePush == null ? 'Dips' : exerciseNamePush,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw3d3pushIndex',
          //     addExerciseName: 'bbyw3d3pushName',
          //   ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPush == null ? 8 : exerciseIndexPush,
            percentage1: 75,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title: exerciseNamePull == null ? 'Pull Up' : exerciseNamePull,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw3d3pullIndex',
          //     addExerciseName: 'bbyw3d3pullName',
          //   ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPull == null ? 17 : exerciseIndexPull,
            percentage1: 75,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title:
          //       exerciseNameSLC == null ? 'Bulgarian Squats' : exerciseNameSLC,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw3d3slcIndex',
          //     addExerciseName: 'bbyw3d3slcName',
          //   ),
          // ),
          OneSet(
            liftIndex: exerciseIndexSLC == null ? 31 : exerciseIndexSLC,
            percentage1: 75,
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
