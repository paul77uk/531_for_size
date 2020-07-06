import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_1/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class RestPause1DayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1123,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 1124,
          ),
          OneSetWarmUp(
            title: 'Reverse Grip Curl',
            liftIndex: 15,
            cbIndex1: 1125,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 1126,
          ),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1127,
            cbIndex2: 1128,
            cbIndex3: 1129,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1 PR',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1130,
            cbIndex2: 1131,
            cbIndex3: 1132,
            reps1: '3',
            reps2: '3',
            reps3: '3+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            percentage: 70,
            reps: '15+',
            cbIndex: 1133,
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          OneSetWarmUp(
            title: 'Straight Leg Deadlift',
            liftIndex: 16,
            cbIndex1: 1135,
          ),
          WidowMakerPr(
            title: 'WidowMaker Pr',
            liftIndex: 16,
            percentage: 70,
            reps: '15+',
            cbIndex: 1136,
          ),
          NewPRWidget(
            index: 16,
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
