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

class RestPause4DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1529,
            cbIndex2: 1530,
            cbIndex3: 1531,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1532,
            cbIndex2: 1533,
            cbIndex3: 1534,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 75,
            cbIndex: 1535,
          ),
          NewPRWidget(
            index: 0,
            percentage: 75,
          ),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1536,
            cbIndex2: 1537,
            cbIndex3: 1538,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 1,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1539,
            cbIndex2: 1540,
            cbIndex3: 1541,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          OneRestPauseSet(
            liftIndex: 1,
            title: 'RP Set',
            percentage1: 75,
            cbIndex1: 1542,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1543,
            percentage: 65,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 80,
            cbIndex1: 1470,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1544,
            cbIndex2: 1545,
          ),
          LightBodyWeightAssistance(
            title: 'Ab Wheel',
            liftIndex: 12,
            cbIndex1: 1576,
            cbIndex2: 1577,
            cbIndex3: 1578,
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
