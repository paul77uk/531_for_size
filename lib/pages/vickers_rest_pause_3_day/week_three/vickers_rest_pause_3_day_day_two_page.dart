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
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 324,
              cbIndex2: 325,
              cbIndex3: 326,
              cbIndex4: 327,
              cbIndex5: 328,
              cbIndex6: 329,
              cbIndex7: 330,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 1,
            cbIndex1: 331,
            cbIndex2: 332,
            cbIndex3: 333,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 1,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 334,
            cbIndex2: 335,
            cbIndex3: 336,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 1,
            percentage1: 75,
            cbIndex1: 337,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 338,
              cbIndex2: 339,
              cbIndex3: 340,
              cbIndex4: 341,
              cbIndex5: 342,
              cbIndex6: 343,
              cbIndex7: 344,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 345,
            cbIndex2: 346,
            cbIndex3: 347,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 348,
            cbIndex2: 349,
            cbIndex3: 350,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 75,
            cbIndex1: 351,
          ),
          RouteTile(
            title: 'Fat Grip Curl',
            route: AlternativeRPset(
              cbIndex1: 352,
              cbIndex2: 353,
              cbIndex3: 354,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 23,
            percentage: 60,
            cbIndex1: 355,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 75,
            cbIndex1: 356,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 357,
              cbIndex2: 358,
              cbIndex3: 359,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 360,
          ),
          RouteTile(
            title: 'Bulgarian Squats',
            route: AlternativeRPset(
              cbIndex1: 361,
              cbIndex2: 362,
              cbIndex3: 363,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 31,
            percentage: 60,
            cbIndex1: 364,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 31,
            percentage: 75,
            cbIndex: 365,
          ),
          NewPRWidget(
            index: 31,
            percentage: 75,
          ),
          RouteTile(
            title: 'Leg Raise',
            route: AlternativeLightAssistance(
              cbIndex1: 366,
              cbIndex2: 367,
              cbIndex3: 368,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 18,
            cbIndex1: 369,
            cbIndex2: 370,
            cbIndex3: 371,
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
