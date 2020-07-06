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

class RestPause2DayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1210,
            cbIndex2: 1211,
            cbIndex3: 1213,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1214,
            cbIndex2: 1215,
            cbIndex3: 1216,
            reps1: '3',
            reps2: '3',
          ),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1217,
            cbIndex2: 1218,
            cbIndex3: 1219,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1220,
            cbIndex2: 1221,
            cbIndex3: 1222,
            reps1: '3',
            reps2: '3',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 70,
            cbIndex: 1223,
          ),
          NewPRWidget(
            index: 2,
            percentage: 70,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 17,
            cbIndex1: 1224,
            cbIndex2: 1225,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1226,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 1227,
          ),
          OneSetWarmUp(
            title: 'Straight Leg Deadlift',
            liftIndex: 16,
            cbIndex1: 1228,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 16,
            percentage1: 70,
            cbIndex1: 1229,
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
