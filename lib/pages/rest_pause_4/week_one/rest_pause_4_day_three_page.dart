import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_4/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class RestPause4DayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1491,
            cbIndex2: 1492,
            cbIndex3: 1493,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1494,
            cbIndex2: 1495,
            cbIndex3: 1496,
            reps1: '3',
            reps2: '3',
            reps3: '3+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 70,
            cbIndex: 1497,
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1498,
            cbIndex2: 1499,
            cbIndex3: 1500,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 1,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1501,
            cbIndex2: 1502,
            cbIndex3: 1503,
            reps1: '3',
            reps2: '3',
            reps3: '3+',
          ),
          OneRestPauseSet(
            liftIndex: 1,
            title: 'RP Set',
            percentage1: 70,
            cbIndex1: 1504,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1505,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 70,
            cbIndex1: 1506,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1506,
            cbIndex2: 1508,
          ),
          LightBodyWeightAssistance(
            title: 'Ab Wheel',
            liftIndex: 12,
            cbIndex1: 1570,
            cbIndex2: 1571,
            cbIndex3: 1572,
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
