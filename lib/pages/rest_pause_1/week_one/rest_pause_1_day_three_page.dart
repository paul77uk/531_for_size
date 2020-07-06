import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_1/notes.dart';
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

class RestPause1DayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1100,
            cbIndex2: 1101,
            cbIndex3: 1102,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            reps1: '3',
            reps2: '3',
            reps3: '3+',
            cbIndex1: 1103,
            cbIndex2: 1104,
            cbIndex3: 1105,
          ),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1106,
            cbIndex2: 1107,
            cbIndex3: 1108,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            reps1: '3',
            reps2: '3',
            reps3: '3+',
            cbIndex1: 1109,
            cbIndex2: 1110,
            cbIndex3: 1111,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1112,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 70,
            cbIndex1: 1113,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 9,
            cbIndex1: 1114,
            cbIndex2: 1115,
          ),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1116,
            cbIndex2: 1117,
            cbIndex3: 1118,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1119,
            cbIndex2: 1120,
            cbIndex3: 1121,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 70,
            cbIndex: 1122,
          ),
          NewPRWidget(
            index: 2,
            percentage: 70,
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
