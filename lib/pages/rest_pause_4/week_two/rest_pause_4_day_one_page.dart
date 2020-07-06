import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_4/notes.dart';
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

class RestPause4DayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1509,
            cbIndex2: 1510,
            cbIndex3: 1511,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1512,
            cbIndex2: 1513,
            cbIndex3: 1514,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 70,
            cbIndex: 1515,
          ),
          NewPRWidget(
            index: 2,
            percentage: 70,
          ),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1516,
            cbIndex2: 1517,
            cbIndex3: 1518,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1519,
            cbIndex2: 1520,
            cbIndex3: 1521,
          ),
          OneRestPauseSet(
            liftIndex: 3,
            title: 'RP Set',
            percentage1: 70,
            cbIndex1: 1528,
          ),
          OneSetWarmUp(
            title: 'Kroc Row',
            liftIndex: 19,
            cbIndex1: 1522,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 19,
            reps: '15+',
            percentage: 70,
            cbIndex: 1523,
          ),
          NewPRWidget(
            index: 19,
            percentage: 70,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1524,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 1525,
          ),
          LightBodyWeightAssistance(
            title: 'Leg Raises',
            liftIndex: 18,
            cbIndex1: 1573,
            cbIndex2: 1574,
            cbIndex3: 1575,
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
