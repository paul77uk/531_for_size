import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_2/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class RestPause2DayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1230,
            cbIndex2: 1231,
            cbIndex3: 1232,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            reps1: '3',
            reps2: '3',
            cbIndex1: 1233,
            cbIndex2: 1234,
            cbIndex3: 1235,
          ),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1236,
            cbIndex2: 1237,
            cbIndex3: 1238,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1239,
            cbIndex2: 1240,
            cbIndex3: 1241,
            reps1: '3',
            reps2: '3',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 70,
            cbIndex: 1242,
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1243,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 70,
            cbIndex1: 1244,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1245,
            cbIndex2: 1246,
          ),
          OneSetWarmUp(
            title: 'Reverse Grip Curl',
            liftIndex: 15,
            cbIndex1: 1247,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 1248,
          ),
          Divider(height: 0),
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
