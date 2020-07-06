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

class VickersRestPause3DayDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Squat',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 140,
              cbIndex2: 141,
              cbIndex3: 142,
              cbIndex4: 143,
              cbIndex5: 144,
              cbIndex6: 145,
              cbIndex7: 146,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 147,
            cbIndex2: 148,
            cbIndex3: 149,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 150,
            cbIndex2: 151,
            cbIndex3: 152,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 0,
            percentage: 70,
            cbIndex: 153,
          ),
          NewPRWidget(
            index: 0,
            percentage: 70,
          ),
          RouteTile(
            title: 'Clean',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 154,
              cbIndex2: 155,
              cbIndex3: 156,
              cbIndex4: 157,
              cbIndex5: 158,
              cbIndex6: 159,
              cbIndex7: 160,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 24,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 161,
            cbIndex2: 162,
            cbIndex3: 163,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 24,
            percentage1: 70,
            cbIndex1: 164,
          ),
          RouteTile(
            title: 'Fat Grip Deadlift',
            route: AlternativeRPset(
              cbIndex1: 165,
              cbIndex2: 166,
              cbIndex3: 167,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 29,
            percentage: 50,
            cbIndex1: 29,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 29,
            percentage: 70,
            cbIndex: 168,
          ),
          NewPRWidget(
            index: 29,
            percentage: 70,
          ),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 169,
              cbIndex2: 170,
              cbIndex3: 171,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 50,
            cbIndex1: 172,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 70,
            cbIndex: 173,
          ),
          NewPRWidget(
            index: 30,
            percentage: 70,
          ),
          RouteTile(
            title: 'Rope/Towel Pull Up',
            route: AlternativeRPset(
              cbIndex1: 174,
              cbIndex2: 175,
              cbIndex3: 176,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 28,
            cbIndex1: 177,
          ),
          RouteTile(
            title: 'Ab Wheel',
            route: AlternativeLightAssistance(
              cbIndex1: 178,
              cbIndex2: 179,
              cbIndex3: 180,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 12,
            cbIndex1: 181,
            cbIndex2: 182,
            cbIndex3: 183,
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
