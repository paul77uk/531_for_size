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
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              cbIndex1: 1,
              cbIndex2: 2,
              cbIndex3: 3,
              cbIndex4: 4,
              cbIndex5: 5,
              cbIndex6: 6,
              cbIndex7: 7,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 8,
            cbIndex2: 9,
            cbIndex3: 10,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 11,
            cbIndex2: 12,
            cbIndex3: 13,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 0,
            percentage: 65,
            cbIndex: 14,
          ),
          NewPRWidget(
            index: 0,
            percentage: 65,
          ),
          RouteTile(
            title: 'Clean',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              cbIndex1: 15,
              cbIndex2: 16,
              cbIndex3: 17,
              cbIndex4: 18,
              cbIndex5: 19,
              cbIndex6: 20,
              cbIndex7: 21,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 418,
            cbIndex2: 419,
            cbIndex3: 420,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 24,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 22,
            cbIndex2: 23,
            cbIndex3: 24,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 24,
            percentage1: 65,
            cbIndex1: 25,
          ),
          RouteTile(
            title: 'Fat Grip Deadlift',
            route: AlternativeRPset(
              cbIndex1: 26,
              cbIndex2: 27,
              cbIndex3: 28,
              percentage1: 50,
              percentage2: 65,
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
            percentage: 65,
            cbIndex: 30,
          ),
          NewPRWidget(
            index: 29,
            percentage: 65,
          ),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 31,
              cbIndex2: 32,
              cbIndex3: 33,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 50,
            cbIndex1: 34,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 65,
            cbIndex: 35,
          ),
          NewPRWidget(
            index: 30,
            percentage: 65,
          ),
          RouteTile(
            title: 'Rope/Towel Pull Up',
            route: AlternativeRPset(
              cbIndex1: 35,
              cbIndex2: 37,
              cbIndex3: 38,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 28,
            cbIndex1: 39,
          ),
          RouteTile(
            title: 'Ab Wheel',
            route: AlternativeLightAssistance(
              cbIndex1: 40,
              cbIndex2: 41,
              cbIndex3: 42,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 12,
            cbIndex1: 43,
            cbIndex2: 44,
            cbIndex3: 45,
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
