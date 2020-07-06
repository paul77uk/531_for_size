import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/deload_page/three_day_week_page.dart';
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
            cbIndex1: 1287,
            cbIndex2: 1288,
            cbIndex3: 1289,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1288,
            cbIndex2: 1289,
            cbIndex3: 1290,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1346,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 60,
            cbIndex1: 1347,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 17,
            cbIndex1: 1291,
            cbIndex2: 1292,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1293,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 1294,
          ),
          ThreeSetAssistance(
            liftIndex: 7,
            title: 'Reverse Fly',
            percentage: 50,
            cbIndex1: 1323,
            cbIndex2: 1324,
            cbIndex3: 1325,
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
