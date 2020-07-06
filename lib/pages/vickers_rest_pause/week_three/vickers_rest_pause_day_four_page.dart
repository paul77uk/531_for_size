import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/lateral_front_hold_combo.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';

import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';

import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';

import 'package:flutter/material.dart';

class VickersRestPauseDayFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1302,
            cbIndex2: 1303,
            cbIndex3: 1304,
          ),
          FiveThreeOnePrSet(
              title: '5/3/1',
              liftIndex: 3,
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 1305,
              cbIndex2: 1306,
              cbIndex3: 1307,
              reps1: '3',
              reps2: '3',
              reps3: '3+'),
          OneRestPauseSet(
            title: 'RP',
            liftIndex: 3,
            percentage1: 75,
            cbIndex1: 105,
          ),
          WarmUp(
            title: 'Clean',
            liftIndex: 24,
            cbIndex1: 100,
            cbIndex2: 101,
            cbIndex3: 102,
          ),
          FiveThreeOnePrSet(
              title: '5/3/1',
              liftIndex: 24,
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 1305,
              cbIndex2: 1306,
              cbIndex3: 1307,
              reps1: '3',
              reps2: '3',
              reps3: '3+'),
          OneRestPauseSet(
            title: 'RP',
            liftIndex: 24,
            percentage1: 75,
            cbIndex1: 105,
          ),
          OneSetWarmUp(
            title: 'Kirk Karwoski Rows',
            liftIndex: 26,
            cbIndex1: 1312,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 6,
            percentage1: 80,
            cbIndex1: 1313,
          ),
          LateralFrontHoldCombo(
            title: 'Lateral, Front Hold Combo',
            liftIndex: 25,
            percentage1: 75,
            cbIndex1: 1,
          ),
          LightBodyWeightAssistance(
            liftIndex: 18,
            title: 'Hanging Leg Raise',
            cbIndex1: 1334,
            cbIndex2: 1335,
            cbIndex3: 1336,
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
