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
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 279,
              cbIndex2: 280,
              cbIndex3: 281,
              cbIndex4: 282,
              cbIndex5: 283,
              cbIndex6: 284,
              cbIndex7: 285,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 286,
            cbIndex2: 287,
            cbIndex3: 288,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 289,
            cbIndex2: 290,
            cbIndex3: 291,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 0,
            percentage: 75,
            cbIndex: 292,
          ),
          NewPRWidget(
            index: 0,
            percentage: 75,
          ),
          RouteTile(
            title: 'Clean',
            route: Alternative531AndRP(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 293,
              cbIndex2: 294,
              cbIndex3: 295,
              cbIndex4: 296,
              cbIndex5: 297,
              cbIndex6: 298,
              cbIndex7: 299,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 24,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 300,
            cbIndex2: 301,
            cbIndex3: 302,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 24,
            percentage1: 75,
            cbIndex1: 303,
          ),
          RouteTile(
            title: 'Fat Grip Deadlift',
            route: AlternativeRPset(
              cbIndex1: 304,
              cbIndex2: 305,
              cbIndex3: 306,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 29,
            percentage: 60,
            cbIndex1: 307,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 29,
            percentage: 75,
            cbIndex: 308,
          ),
          NewPRWidget(
            index: 29,
            percentage: 75,
          ),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 309,
              cbIndex2: 310,
              cbIndex3: 311,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 60,
            cbIndex1: 312,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 75,
            cbIndex: 313,
          ),
          NewPRWidget(
            index: 30,
            percentage: 75,
          ),
          RouteTile(
            title: 'Rope/Towel Pull Up',
            route: AlternativeRPset(
              cbIndex1: 314,
              cbIndex2: 315,
              cbIndex3: 316,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 28,
            cbIndex1: 317,
          ),
          RouteTile(
            title: 'Ab Wheel',
            route: AlternativeLightAssistance(
              cbIndex1: 318,
              cbIndex2: 319,
              cbIndex3: 320,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 12,
            cbIndex1: 321,
            cbIndex2: 322,
            cbIndex3: 323,
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
