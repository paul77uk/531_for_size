import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_and_rp.dart';
import 'package:five_three_one_forever_app/widgets/alternative_light_assitance.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set_without_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class VickersRestPause3DayDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Bench',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 184,
              cbIndex2: 185,
              cbIndex3: 186,
              cbIndex4: 187,
              cbIndex5: 188,
              cbIndex6: 189,
              cbIndex7: 190,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 1,
            cbIndex1: 191,
            cbIndex2: 192,
            cbIndex3: 193,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 1,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 194,
            cbIndex2: 195,
            cbIndex3: 196,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 1,
            percentage1: 70,
            cbIndex1: 197,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 198,
              cbIndex2: 199,
              cbIndex3: 200,
              cbIndex4: 201,
              cbIndex5: 202,
              cbIndex6: 203,
              cbIndex7: 204,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 205,
            cbIndex2: 206,
            cbIndex3: 207,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 208,
            cbIndex2: 209,
            cbIndex3: 210,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 70,
            cbIndex1: 211,
          ),
          RouteTile(
            title: 'Fat Grip Curl',
            route: AlternativeRPset(
              cbIndex1: 212,
              cbIndex2: 213,
              cbIndex3: 214,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 23,
            percentage: 50,
            cbIndex1: 215,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 70,
            cbIndex1: 216,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 217,
              cbIndex2: 218,
              cbIndex3: 219,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 220,
          ),
          RouteTile(
            title: 'Bulgarian Squats',
            route: AlternativeRPset(
              cbIndex1: 221,
              cbIndex2: 222,
              cbIndex3: 223,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 31,
            percentage: 50,
            cbIndex1: 224,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 31,
            percentage: 70,
            cbIndex: 225,
          ),
          NewPRWidget(
            index: 31,
            percentage: 70,
          ),
          RouteTile(
            title: 'Leg Raise',
            route: AlternativeLightAssistance(
              cbIndex1: 226,
              cbIndex2: 227,
              cbIndex3: 228,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 18,
            cbIndex1: 229,
            cbIndex2: 230,
            cbIndex3: 231,
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
