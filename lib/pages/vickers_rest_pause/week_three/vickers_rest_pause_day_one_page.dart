import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';

import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';

import 'package:flutter/material.dart';

class VickersRestPauseDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1287,
            cbIndex2: 1288,
            cbIndex3: 1289,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1288,
            cbIndex2: 1289,
            cbIndex3: 1290,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 0,
            percentage: 75,
            cbIndex: 1,
          ),
          NewPRWidget(
            index: 0,
            percentage: 75,
          ),
          OneSetWarmUp(
            title: 'Krow Rows',
            liftIndex: 19,
            cbIndex1: 1346,
            percentage: 60,
          ),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 19,
            percentage: 80,
            cbIndex: 1347,
          ),
          NewPRWidget(
            index: 19,
            percentage: 80,
          ),
          OneSetWarmUp(
            title: 'Fat Grip Farmers',
            liftIndex: 2,
            cbIndex1: 2,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP',
            liftIndex: 2,
            percentage1: 80,
            cbIndex1: 3,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1293,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 80,
            cbIndex1: 1294,
          ),
          BodyWeightRestPauseSet(
            title: 'Dips',
            liftIndex: 8,
            cbIndex1: 1291,
            cbIndex2: 1292,
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
