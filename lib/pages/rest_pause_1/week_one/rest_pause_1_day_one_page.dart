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

class RestPause1DayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          WarmUp(
            title: 'Bench',
            liftIndex: 1,
            cbIndex1: 1068,
            cbIndex2: 1069,
            cbIndex3: 1070,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 1,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1065,
            cbIndex2: 1066,
            cbIndex3: 1067,
          ),
          WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 1071,
            cbIndex2: 1072,
            cbIndex3: 1073,
          ),
          RestPauseSet(
            title: '5/3/1 RP',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1074,
            cbIndex2: 1075,
            cbIndex3: 1076,
          ),
          OneSetWarmUp(
            title: 'Close Grip Bench',
            liftIndex: 14,
            cbIndex1: 1077,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 14,
            percentage1: 60,
            cbIndex1: 1078,
          ),
          BodyWeightRestPauseSet(
            title: 'Pull Ups',
            liftIndex: 9,
            cbIndex1: 1079,
            cbIndex2: 1080,
          ),
          WarmUp(
            title: 'Deadlift',
            liftIndex: 2,
            cbIndex1: 1081,
            cbIndex2: 1082,
            cbIndex3: 1083,
          ),
          FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 1084,
            cbIndex2: 1085,
            cbIndex3: 1086,
          ),
          WidowMakerPr(
            title: 'WidowMaker PR',
            liftIndex: 2,
            reps: '15+',
            percentage: 65,
            cbIndex: 1087,
          ),
          NewPRWidget(
            index: 2,
            percentage: 65,
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
