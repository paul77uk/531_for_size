import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/rest_pause_2/notes.dart';
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

class RestPause2DayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1173,
            cbIndex2: 1174,
            cbIndex3: 1175,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1176,
            cbIndex2: 1177,
            cbIndex3: 1178,
          ),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1179,
            cbIndex2: 1180,
            cbIndex3: 1181,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1182,
            cbIndex2: 1183,
            cbIndex3: 1184,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 65,
            cbIndex: 1185,
          ),
          NewPRWidget(
            index: 2,
            percentage: 65,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 17,
            cbIndex1: 1186,
            cbIndex2: 1187,
          ),
          OneSetWarmUp(
            title: 'Curl',
            liftIndex: 5,
            cbIndex1: 1188,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 1189,
          ),
          OneSetWarmUp(
            title: 'Straight Leg Deadlift',
            liftIndex: 16,
            cbIndex1: 1190,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 16,
            percentage1: 60,
            cbIndex1: 1191,
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
