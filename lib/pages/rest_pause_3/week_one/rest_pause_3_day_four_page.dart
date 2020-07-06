import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_3/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';

import 'package:flutter/material.dart';

class RestPause3DayFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1314,
            cbIndex2: 1315,
            cbIndex3: 1316,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1317,
            cbIndex2: 1318,
            cbIndex3: 1319,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 65,
            cbIndex: 1320,
          ),
          NewPRWidget(
            index: 0,
            percentage: 65,
          ),
          OneSetWarmUp(
            title: 'Straight Leg Deadlift',
            liftIndex: 16,
            cbIndex1: 1321,
          ),
          WidowMakerPr(
            title: 'RP Set',
            liftIndex: 16,
            percentage: 60,
            cbIndex: 1322,
          ),
          NewPRWidget(
            index: 0,
            percentage: 60,
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
