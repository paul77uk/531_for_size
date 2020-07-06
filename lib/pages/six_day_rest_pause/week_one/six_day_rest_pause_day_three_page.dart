import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_and_rp.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class SixDayRestPauseDayThreePage extends StatelessWidget {
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
              percentage4: 60,
              cbIndex1: 480,
              cbIndex2: 481,
              cbIndex3: 482,
              cbIndex4: 483,
              cbIndex5: 484,
              cbIndex6: 485,
              cbIndex7: 486,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 1,
            cbIndex1: 487,
            cbIndex2: 488,
            cbIndex3: 489,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 1,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 490,
            cbIndex2: 491,
            cbIndex3: 492,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 1,
            percentage1: 60,
            cbIndex1: 493,
          ),
          RouteTile(
            title: 'Press',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              percentage4: 60,
              cbIndex1: 494,
              cbIndex2: 495,
              cbIndex3: 496,
              cbIndex4: 497,
              cbIndex5: 498,
              cbIndex6: 499,
              cbIndex7: 500,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 3,
            cbIndex1: 501,
            cbIndex2: 502,
            cbIndex3: 503,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 504,
            cbIndex2: 505,
            cbIndex3: 506,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 60,
            cbIndex1: 507,
          ),
          RouteTile(
            title: 'Yates Row',
            route: AlternativeRPset(
              cbIndex1: 508,
              cbIndex2: 509,
              cbIndex3: 510,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 42,
            percentage: 50,
            cbIndex1: 511,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 42,
            percentage: 60,
            cbIndex: 512,
          ),
          NewPRWidget(
            index: 42,
            percentage: 60,
          ),
          RouteTile(
            title: 'Crucifix Hold',
            route: AlternativeRPset(
              cbIndex1: 513,
              cbIndex2: 514,
              cbIndex3: 515,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 34,
            percentage: 50,
            cbIndex1: 516,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 34,
            percentage1: 60,
            cbIndex1: 517,
          ),
          RouteTile(
            title: 'Bulgarian Squat',
            route: AlternativeRPset(
              cbIndex1: 518,
              cbIndex2: 519,
              cbIndex3: 520,
              percentage1: 50,
              percentage2: 60,
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
            percentage: 60,
            cbIndex: 521,
          ),
          NewPRWidget(
            index: 31,
            percentage: 60,
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
