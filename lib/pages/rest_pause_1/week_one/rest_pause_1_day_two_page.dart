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

class RestPause1DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1088,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 1089,
          ),
          OneSetWarmUp(
            title: 'Reverse Grip Curl',
            liftIndex: 15,
            cbIndex1: 1090,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 1091,
          ),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1092,
            cbIndex2: 1093,
            cbIndex3: 1094,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1 PR',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1095,
            cbIndex2: 1096,
            cbIndex3: 1097,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            percentage: 65,
            reps: '15+',
            cbIndex: 1134,
          ),
          NewPRWidget(
            index: 0,
            percentage: 65,
          ),
          OneSetWarmUp(
            title: 'Straight Leg Deadlift',
            liftIndex: 16,
            cbIndex1: 1098,
          ),
          WidowMakerPr(
            title: 'WidowMaker Pr',
            liftIndex: 16,
            percentage: 60,
            reps: '15+',
            cbIndex: 1099,
          ),
          NewPRWidget(
            index: 16,
            percentage: 60,
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
