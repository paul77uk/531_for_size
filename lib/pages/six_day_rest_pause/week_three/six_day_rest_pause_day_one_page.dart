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

class SixDayRestPauseDayOnePage extends StatelessWidget {
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
              cbIndex1: 789,
              cbIndex2: 790,
              cbIndex3: 791,
              cbIndex4: 792,
              cbIndex5: 793,
              cbIndex6: 794,
              cbIndex7: 795,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 796,
            cbIndex2: 797,
            cbIndex3: 798,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 799,
            cbIndex2: 800,
            cbIndex3: 801,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 0,
            percentage: 75,
            cbIndex: 802,
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
              cbIndex1: 803,
              cbIndex2: 804,
              cbIndex3: 805,
              cbIndex4: 806,
              cbIndex5: 807,
              cbIndex6: 808,
              cbIndex7: 809,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 810,
            cbIndex2: 811,
            cbIndex3: 812,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 24,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 813,
            cbIndex2: 814,
            cbIndex3: 815,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 24,
            percentage1: 75,
            cbIndex1: 816,
          ),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 817,
              cbIndex2: 818,
              cbIndex3: 819,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 60,
            cbIndex1: 820,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 75,
            cbIndex: 821,
          ),
          NewPRWidget(
            index: 30,
            percentage: 75,
          ),
          RouteTile(
            title: 'Farmers',
            route: AlternativeRPset(
              cbIndex1: 822,
              cbIndex2: 823,
              cbIndex3: 824,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 22,
            percentage: 60,
            cbIndex1: 825,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 22,
            percentage1: 75,
            cbIndex1: 826,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 827,
              cbIndex2: 828,
              cbIndex3: 829,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 830,
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
