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

class RestPause4DayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1546,
            cbIndex2: 1547,
            cbIndex3: 1548,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1549,
            cbIndex2: 1550,
            cbIndex3: 1551,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 75,
            cbIndex: 1552,
          ),
          NewPRWidget(
            index: 2,
            percentage: 75,
          ),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1553,
            cbIndex2: 1554,
            cbIndex3: 1555,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1556,
            cbIndex2: 1557,
            cbIndex3: 1558,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          OneRestPauseSet(
            liftIndex: 3,
            title: 'RP Set',
            percentage1: 75,
            cbIndex1: 1559,
          ),
          OneSetWarmUp(
            title: 'Kroc Row',
            liftIndex: 19,
            cbIndex1: 1560,
            percentage: 65,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 19,
            reps: '15+',
            percentage: 80,
            cbIndex: 1561,
          ),
          NewPRWidget(
            index: 19,
            percentage: 80,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1562,
            percentage: 65,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 80,
            cbIndex1: 1563,
          ),
          LightBodyWeightAssistance(
            title: 'Leg Raises',
            liftIndex: 18,
            cbIndex1: 1579,
            cbIndex2: 1580,
            cbIndex3: 1581,
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
