import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
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

  int exerciseIndex531TotalReps;
  String exerciseName531TotalReps;
  int exerciseIndexPush;
  String exerciseNamePush;
  int exerciseIndexPull;
  String exerciseNamePull;
  int exerciseIndexSLC;
  String exerciseNameSLC;

  Future<dynamic> getExercise531TotalRepsIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndex531TotalReps = prefs.getInt('bbyw1d3531TotalRepsIndex');
    });
  }

  Future<dynamic> getExercise531TotalRepsName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseName531TotalReps = prefs.getString('bbyw1d3531TotalRepsName');
    });
  }

  Future<dynamic> getExercisePushIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexPush = prefs.getInt('bbyw1d3pushIndex');
    });
  }

  Future<dynamic> getExercisePushName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePush = prefs.getString('bbyw1d3pushName');
    });
  }

  Future<dynamic> getExercisePullIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexPull = prefs.getInt('bbyw1d3pullIndex');
    });
  }

  Future<dynamic> getExercisePullName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNamePull = prefs.getString('bbyw1d3pullName');
    });
  }

  Future<dynamic> getExerciseSLCIndex() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseIndexSLC = prefs.getInt('bbyw1d3slcIndex');
    });
  }

  Future<dynamic> getExerciseSLCName() async {
    final SharedPreferences prefs = await _sPrefs;
    setState(() {
      exerciseNameSLC = prefs.getString('bbyw1d3slcName');
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   getExerciseIndex();
  // }

  @override
  Widget build(BuildContext context) {
    getExercise531TotalRepsIndex();
    getExercise531TotalRepsName();
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
          // RouteTile(
          //   title: exerciseName531TotalReps == null
          //       ? 'Bench'
          //       : exerciseName531TotalReps,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw1d3531TotalRepsIndex',
          //     addExerciseName: 'bbyw1d3531TotalRepsName',
          //   ),
          // ),
          WarmUp(
            liftIndex: exerciseIndex531TotalReps == null
                ? 2
                : exerciseIndex531TotalReps,
            cbIndex1: 501,
            cbIndex2: 502,
            cbIndex3: 503,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: exerciseIndex531TotalReps == null
                ? 2
                : exerciseIndex531TotalReps,
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
            liftIndex: exerciseIndex531TotalReps == null
                ? 2
                : exerciseIndex531TotalReps,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '50',
          ),
          // RouteTile(
          //   title: exerciseNamePush == null ? 'Dips' : exerciseNamePush,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw1d3pushIndex',
          //     addExerciseName: 'bbyw1d3pushName',
          //   ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPush == null ? 8 : exerciseIndexPush,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title: exerciseNamePull == null ? 'Pull Up' : exerciseNamePull,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw1d3pullIndex',
          //     addExerciseName: 'bbyw1d3pullName',
          //   ),
          // ),
          OneSet(
            liftIndex: exerciseIndexPull == null ? 17 : exerciseIndexPull,
            percentage1: 65,
            title: 'Total Reps',
            cbIndex1: 1,
            reps: '25-50',
          ),
          // RouteTile(
          //   title:
          //       exerciseNameSLC == null ? 'Bulgarian Squats' : exerciseNameSLC,
          //   route: ChooseExercise(
          //     addExerciseIndex: 'bbyw1d3slcIndex',
          //     addExerciseName: 'bbyw1d3slcName',
          //   ),
          // ),
          OneSet(
            liftIndex: exerciseIndexSLC == null ? 31 : exerciseIndexSLC,
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
      ),
    );
  }
}
