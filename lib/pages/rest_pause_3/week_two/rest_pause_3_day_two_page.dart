import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class RestPause3DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1354,
            cbIndex2: 1355,
            cbIndex3: 1356,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1357,
            cbIndex2: 1358,
            cbIndex3: 1359,
            reps1: '3',
            reps2: '3',
            reps3: '3',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 70,
            cbIndex: 1360,
          ),
          NewPRWidget(
            index: 2,
            percentage: 70,
          ),
          OneSetWarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1361,
          ),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 0,
            percentage: 70,
            cbIndex: 1362,
            reps: '15+',
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          LightBodyWeightAssistance(
            liftIndex: 12,
            title: 'Ab Wheel',
            cbIndex1: 1363,
            cbIndex2: 1364,
            cbIndex3: 1365,
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
