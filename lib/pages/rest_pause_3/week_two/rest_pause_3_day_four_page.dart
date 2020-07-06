import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';

import 'package:flutter/material.dart';

class RestPause3DayFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1381,
            cbIndex2: 1382,
            cbIndex3: 1383,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1384,
            cbIndex2: 1385,
            reps1: '3',
            reps2: '3',
            reps3: '3',
            cbIndex3: 1386,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 70,
            cbIndex: 1387,
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          OneSetWarmUp(
            title: 'Straight Leg Deadlift',
            liftIndex: 16,
            cbIndex1: 1388,
          ),
          WidowMakerPr(
            title: 'RP Set',
            liftIndex: 16,
            percentage: 70,
            cbIndex: 1389,
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          LightBodyWeightAssistance(
            liftIndex: 18,
            title: 'Hanging Leg Raise',
            cbIndex1: 1390,
            cbIndex2: 1391,
            cbIndex3: 1392,
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
