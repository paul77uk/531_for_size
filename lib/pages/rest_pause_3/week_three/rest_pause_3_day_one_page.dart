import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';

import 'package:five_three_one_forever_app/widgets/five_three_one_rp_set.dart';

import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/three_set_assistance.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';

import 'package:flutter/material.dart';

class RestPause3DayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1393,
            cbIndex2: 1394,
            cbIndex3: 1395,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1396,
            reps2: '3',
            reps3: '1',
            cbIndex2: 1397,
            cbIndex3: 1398,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            percentage: 60,
            liftIndex: 14,
            cbIndex1: 1399,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 80,
            cbIndex1: 1400,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 17,
            cbIndex1: 1401,
            cbIndex2: 1402,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1403,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 80,
            cbIndex1: 1404,
          ),
          ThreeSetAssistance(
            liftIndex: 7,
            title: 'Reverse Fly',
            percentage: 50,
            cbIndex1: 1405,
            cbIndex2: 1406,
            cbIndex3: 1407,
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
