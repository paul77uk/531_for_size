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
            cbIndex1: 1408,
            cbIndex2: 1409,
            cbIndex3: 1410,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1411,
            cbIndex2: 1412,
            cbIndex3: 1413,
            reps2: '3',
            reps3: '1',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 75,
            cbIndex: 1414,
          ),
          NewPRWidget(
            index: 2,
            percentage: 75,
          ),
          OneSetWarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1415,
            percentage: 60,
          ),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 0,
            percentage: 80,
            cbIndex: 1416,
            reps: '15+',
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          LightBodyWeightAssistance(
            liftIndex: 12,
            title: 'Ab Wheel',
            cbIndex1: 1417,
            cbIndex2: 1418,
            cbIndex3: 1419,
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
