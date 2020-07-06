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

class RestPause2DayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1191,
            cbIndex2: 1192,
            cbIndex3: 1193,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1194,
            cbIndex2: 1195,
            cbIndex3: 1196,
          ),
          WarmUp(
            title: 'Squat',
            liftIndex: 0,
            cbIndex1: 1197,
            cbIndex2: 1198,
            cbIndex3: 1199,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1200,
            cbIndex2: 1201,
            cbIndex3: 1202,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 0,
            reps: '15+',
            percentage: 65,
            cbIndex: 1203,
          ),
          NewPRWidget(
            index: 0,
            percentage: 65,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1204,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 60,
            cbIndex1: 1205,
          ),
          BodyWeightRestPauseSet(
            title: 'Chin-ups',
            liftIndex: 9,
            cbIndex1: 1206,
            cbIndex2: 1207,
          ),
          OneSetWarmUp(
            title: 'Reverse Grip Curl',
            liftIndex: 15,
            cbIndex1: 1208,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 1209,
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
