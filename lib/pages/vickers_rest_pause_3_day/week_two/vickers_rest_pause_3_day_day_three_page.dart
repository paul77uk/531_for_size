import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_and_rp.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set_without_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class VickersRestPause3DayDayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Deadlift',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 232,
              cbIndex2: 233,
              cbIndex3: 234,
              cbIndex4: 235,
              cbIndex5: 236,
              cbIndex6: 237,
              cbIndex7: 238,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 2,
            cbIndex1: 239,
            cbIndex2: 240,
            cbIndex3: 241,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 242,
            cbIndex2: 243,
            cbIndex3: 244,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 2,
            percentage: 70,
            cbIndex: 245,
          ),
          NewPRWidget(
            index: 2,
            percentage: 70,
          ),
          RouteTile(
            title: 'Press',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 246,
              cbIndex2: 247,
              cbIndex3: 248,
              cbIndex4: 249,
              cbIndex5: 250,
              cbIndex6: 251,
              cbIndex7: 252,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 3,
            cbIndex1: 253,
            cbIndex2: 254,
            cbIndex3: 255,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 256,
            cbIndex2: 257,
            cbIndex3: 258,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 70,
            cbIndex1: 259,
          ),
          RouteTile(
            title: 'Fat Grip Farmers',
            route: AlternativeRPset(
              cbIndex1: 260,
              cbIndex2: 261,
              cbIndex3: 262,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 20,
            percentage: 50,
            cbIndex1: 263,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 20,
            percentage1: 70,
            cbIndex1: 264,
          ),
          RouteTile(
            title: 'Fat Grip Yates Row',
            route: AlternativeRPset(
              cbIndex1: 265,
              cbIndex2: 266,
              cbIndex3: 267,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 32,
            percentage: 50,
            cbIndex1: 268,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 32,
            percentage: 70,
            cbIndex: 269,
          ),
          NewPRWidget(
            index: 32,
            percentage: 70,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 270,
              cbIndex2: 271,
              cbIndex3: 272,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 273,
          ),
          RouteTile(
            title: 'Jump Squats',
            route: AlternativeRPset(
              cbIndex1: 274,
              cbIndex2: 275,
              cbIndex3: 276,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 33,
            percentage: 50,
            cbIndex1: 277,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 33,
            percentage: 70,
            cbIndex: 278,
          ),
          NewPRWidget(
            index: 33,
            percentage: 70,
          ),
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
