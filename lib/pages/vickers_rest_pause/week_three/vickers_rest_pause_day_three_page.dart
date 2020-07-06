import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
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

class VickersRestPauseDayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1287,
            cbIndex2: 1288,
            cbIndex3: 1289,
          ),
          FiveThreeOnePrSet(
              title: '5/3/1',
              liftIndex: 2,
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 1288,
              cbIndex2: 1289,
              cbIndex3: 1290,
              reps1: '5',
              reps2: '3',
              reps3: '1+'),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 2,
            percentage: 75,
            cbIndex: 1,
          ),
          NewPRWidget(
            index: 2,
            percentage: 75,
          ),
          OneSetWarmUp(
            title: 'Bent Row',
            liftIndex: 4,
            cbIndex1: 1346,
            percentage: 60,
          ),
          WidowMakerPr(
            title: 'Widowmaker',
            liftIndex: 4,
            percentage: 80,
            cbIndex: 1347,
          ),
          NewPRWidget(
            index: 4,
            percentage: 80,
          ),
          OneSetWarmUp(
            title: 'Farmers',
            liftIndex: 22,
            cbIndex1: 1312,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 22,
            percentage1: 80,
            cbIndex1: 1313,
          ),
          OneSetWarmUp(
            title: 'Fat Grip Curl',
            liftIndex: 23,
            cbIndex1: 1312,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 80,
            cbIndex1: 1313,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull-ups',
            liftIndex: 17,
            cbIndex1: 1310,
            cbIndex2: 1311,
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
