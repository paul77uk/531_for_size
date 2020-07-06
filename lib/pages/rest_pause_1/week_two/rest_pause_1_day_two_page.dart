import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_1/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class RestPause1DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1137,
            cbIndex2: 1138,
            cbIndex3: 1139,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
            cbIndex1: 1140,
            cbIndex2: 1141,
            cbIndex3: 1142,
          ),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1143,
            cbIndex2: 1144,
            cbIndex3: 1145,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
            cbIndex1: 1146,
            cbIndex2: 1147,
            cbIndex3: 1148,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            percentage: 65,
            liftIndex: 14,
            cbIndex1: 1149,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 80,
            cbIndex1: 1150,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 9,
            cbIndex1: 1151,
            cbIndex2: 1152,
          ),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1153,
            cbIndex2: 1154,
            cbIndex3: 1155,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1156,
            cbIndex2: 1157,
            cbIndex3: 1158,
            reps1: '5',
            reps2: '3',
            reps3: '1+',
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 75,
            cbIndex: 1159,
          ),
          NewPRWidget(
            index: 2,
            percentage: 75,
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
