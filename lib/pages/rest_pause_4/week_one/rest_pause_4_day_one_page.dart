import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_4/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';

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
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1456,
            cbIndex2: 1457,
            cbIndex3: 1458,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1459,
            cbIndex2: 1460,
            cbIndex3: 1461,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 65,
            cbIndex: 1462,
          ),
          NewPRWidget(
            index: 0,
            percentage: 65,
          ),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1463,
            cbIndex2: 1464,
            cbIndex3: 1465,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 1,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1466,
            cbIndex2: 1467,
            cbIndex3: 1468,
          ),
          OneRestPauseSet(
            liftIndex: 1,
            title: 'RP Set',
            percentage1: 65,
            cbIndex1: 1471,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1469,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 60,
            cbIndex1: 1470,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1472,
            cbIndex2: 1473,
          ),
          LightBodyWeightAssistance(
            title: 'Ab Wheel',
            liftIndex: 12,
            cbIndex1: 1564,
            cbIndex2: 1565,
            cbIndex3: 1566,
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
