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

class RestPause3DayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1366,
            cbIndex2: 1367,
            cbIndex3: 1368,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 1369,
            cbIndex2: 1370,
            cbIndex3: 1371,
            reps1: '3',
            reps2: '3',
            reps3: '3',
          ),
          OneSetWarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1372,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 70,
            cbIndex1: 1373,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1374,
            cbIndex2: 1375,
          ),
          OneSetWarmUp(
            title: 'Reverse Grip Curl',
            liftIndex: 15,
            cbIndex1: 1376,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 1377,
          ),
          ThreeSetAssistance(
            liftIndex: 4,
            title: 'Bent Row',
            percentage: 50,
            cbIndex1: 1378,
            cbIndex2: 1379,
            cbIndex3: 1380,
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
