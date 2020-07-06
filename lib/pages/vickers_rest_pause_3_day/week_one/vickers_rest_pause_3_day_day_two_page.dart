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
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              cbIndex1: 46,
              cbIndex2: 47,
              cbIndex3: 48,
              cbIndex4: 49,
              cbIndex5: 50,
              cbIndex6: 51,
              cbIndex7: 52,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 1,
            cbIndex1: 53,
            cbIndex2: 54,
            cbIndex3: 55,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 1,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 56,
            cbIndex2: 57,
            cbIndex3: 58,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 1,
            percentage1: 65,
            cbIndex1: 59,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              cbIndex1: 60,
              cbIndex2: 61,
              cbIndex3: 62,
              cbIndex4: 63,
              cbIndex5: 64,
              cbIndex6: 65,
              cbIndex7: 66,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 67,
            cbIndex2: 68,
            cbIndex3: 69,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 70,
            cbIndex2: 71,
            cbIndex3: 72,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 65,
            cbIndex1: 73,
          ),
          RouteTile(
            title: 'Fat Grip Curl',
            route: AlternativeRPset(
              cbIndex1: 74,
              cbIndex2: 75,
              cbIndex3: 76,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 23,
            percentage: 50,
            cbIndex1: 77,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 65,
            cbIndex1: 78,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 79,
              cbIndex2: 80,
              cbIndex3: 81,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 82,
          ),
          RouteTile(
            title: 'Bulgarian Squats',
            route: AlternativeRPset(
              cbIndex1: 83,
              cbIndex2: 84,
              cbIndex3: 85,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 31,
            percentage: 50,
            cbIndex1: 86,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 31,
            percentage: 65,
            cbIndex: 87,
          ),
          NewPRWidget(
            index: 31,
            percentage: 65,
          ),
          RouteTile(
            title: 'Leg Raise',
            route: AlternativeLightAssistance(
              cbIndex1: 88,
              cbIndex2: 89,
              cbIndex3: 90,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 18,
            cbIndex1: 91,
            cbIndex2: 92,
            cbIndex3: 93,
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
