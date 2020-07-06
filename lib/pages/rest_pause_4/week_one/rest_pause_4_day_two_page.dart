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

class RestPause4DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1474,
            cbIndex2: 1475,
            cbIndex3: 1476,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1477,
            cbIndex2: 1478,
            cbIndex3: 1479,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 65,
            cbIndex: 1480,
          ),
          NewPRWidget(
            index: 2,
            percentage: 65,
          ),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1481,
            cbIndex2: 1482,
            cbIndex3: 1483,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1484,
            cbIndex2: 1485,
            cbIndex3: 1486,
          ),
          OneRestPauseSet(
            liftIndex: 3,
            title: 'RP Set',
            percentage1: 65,
            cbIndex1: 1526,
          ),
          OneSetWarmUp(
            title: 'Kroc Row',
            liftIndex: 19,
            cbIndex1: 1487,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 19,
            reps: '15+',
            percentage: 60,
            cbIndex: 1488,
          ),
          NewPRWidget(
            index: 19,
            percentage: 60,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1489,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 1490,
          ),
          LightBodyWeightAssistance(
            title: 'Leg Raises',
            liftIndex: 18,
            cbIndex1: 1567,
            cbIndex2: 1568,
            cbIndex3: 1569,
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
