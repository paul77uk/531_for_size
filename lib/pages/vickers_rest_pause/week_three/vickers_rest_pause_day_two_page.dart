import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class VickersRestPauseDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1302,
            cbIndex2: 1303,
            cbIndex3: 1304,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 1,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1305,
            cbIndex2: 1306,
            cbIndex3: 1307,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          OneRestPauseSet(
            title: 'RP',
            liftIndex: 1,
            percentage1: 75,
            cbIndex1: 105,
          ),
          WarmUp(
            title: 'Clean & Press',
            liftIndex: 21,
            cbIndex1: 100,
            cbIndex2: 101,
            cbIndex3: 102,
          ),
          FiveThreeOnePrSet(
              title: '5/3/1',
              liftIndex: 21,
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 1305,
              cbIndex2: 1306,
              cbIndex3: 1307,
              reps1: '5',
              reps2: '3',
              reps3: '1+'),
          OneRestPauseSet(
            title: 'RP',
            liftIndex: 21,
            percentage1: 75,
            cbIndex1: 105,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 2,
            percentage: 60,
          ),
          OneRestPauseSet(
            title: 'RP',
            liftIndex: 14,
            percentage1: 80,
            cbIndex1: 3,
          ),
          BodyWeightRestPauseSet(
            title: 'Push up',
            liftIndex: 11,
            cbIndex1: 1291,
            cbIndex2: 1292,
          ),
          LightBodyWeightAssistance(
            liftIndex: 12,
            title: 'Ab Wheel',
            cbIndex1: 1326,
            cbIndex2: 1327,
            cbIndex3: 1327,
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
