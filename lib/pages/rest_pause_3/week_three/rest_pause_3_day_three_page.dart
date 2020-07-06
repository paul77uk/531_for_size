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
            cbIndex1: 1420,
            cbIndex2: 1421,
            cbIndex3: 1422,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1423,
            cbIndex2: 1424,
            cbIndex3: 1425,
            reps2: '3',
            reps3: '1',
          ),
          OneSetWarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1426,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 80,
            cbIndex1: 1427,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1428,
            cbIndex2: 1429,
          ),
          OneSetWarmUp(
            title: 'Reverse Grip Curl',
            liftIndex: 15,
            cbIndex1: 1430,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 80,
            cbIndex1: 1431,
          ),
          ThreeSetAssistance(
            liftIndex: 4,
            title: 'Bent Row',
            percentage: 50,
            cbIndex1: 1432,
            cbIndex2: 1433,
            cbIndex3: 1434,
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
