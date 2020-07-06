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

class BuildingABiggerYokeDayOnePage extends StatefulWidget {
  @override
  _BuildingABiggerYokeDayOnePageState createState() =>
      _BuildingABiggerYokeDayOnePageState();
}

class _BuildingABiggerYokeDayOnePageState
    extends State<BuildingABiggerYokeDayOnePage> {
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
      exerciseIndexPush = prefs.getInt('bbyw2d1pushIndex');
    });
  }

  Future<dynamic> getExercisePushName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePush = prefs.getString('bbyw2d1pushName');
    });
  }

  Future<dynamic> getExercisePullIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexPull = prefs.getInt('bbyw2d1pullIndex');
    });
  }

  Future<dynamic> getExercisePullName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePull = prefs.getString('bbyw2d1pullName');
    });
  }

  Future<dynamic> getExerciseSLCIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexSLC = prefs.getInt('bbyw2d1slcIndex');
    });
  }

  Future<dynamic> getExerciseSLCName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNameSLC = prefs.getString('bbyw2d1slcName');
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
            title: 'Press',
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
            liftIndex: 3,
            cbIndex1: 501,
            cbIndex2: 502,
            cbIndex3: 503,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 3,
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
            liftIndex: 3,
            percentage1: 70,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '50',
          ),
          // RouteTile(
          //   title: exerciseNamePush == null ? 'Dips' : exerciseNamePush,
          //   route: ChooseExercise(
          //       addExerciseIndex: 'bbyw2d1pushIndex',
          //       addExerciseName: 'bbyw2d1pushName',
          //       ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPush == null ? 8 : exerciseIndexPush,
            percentage1: 70,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title: exerciseNamePull == null ? 'Pull Up' : exerciseNamePull,
          //   route: ChooseExercise(
          //       addExerciseIndex: 'bbyw2d1pullIndex',
          //       addExerciseName: 'bbyw2d1pullName',
          //       ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPull == null ? 17 : exerciseIndexPull,
            percentage1: 70,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title:
          //       exerciseNameSLC == null ? 'Bulgarian Squats' : exerciseNameSLC,
          //   route: ChooseExercise(
          //       addExerciseIndex: 'bbyw2d1slcIndex',
          //       addExerciseName: 'bbyw2d1slcName',
          //       ),
          // ),
          OneSet(
            liftIndex: exerciseIndexSLC == null ? 31 : exerciseIndexSLC,
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
