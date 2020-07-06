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
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 852,
              cbIndex2: 853,
              cbIndex3: 854,
              cbIndex4: 855,
              cbIndex5: 856,
              cbIndex6: 857,
              cbIndex7: 858,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 1,
            cbIndex1: 859,
            cbIndex2: 860,
            cbIndex3: 861,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 1,
            percentage1: 75,
            percentage2: 85,
            percentage3: 96,
            cbIndex1: 859,
            cbIndex2: 860,
            cbIndex3: 861,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 1,
            percentage1: 75,
            cbIndex1: 862,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 863,
              cbIndex2: 864,
              cbIndex3: 865,
              cbIndex4: 866,
              cbIndex5: 867,
              cbIndex6: 868,
              cbIndex7: 869,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 870,
            cbIndex2: 871,
            cbIndex3: 872,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 870,
            cbIndex2: 871,
            cbIndex3: 872,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 75,
            cbIndex1: 873,
          ),
          RouteTile(
            title: 'Fat Grip Yates Row',
            route: AlternativeRPset(
              cbIndex1: 874,
              cbIndex2: 875,
              cbIndex3: 876,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 32,
            percentage: 60,
            cbIndex1: 877,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 32,
            percentage: 75,
            cbIndex: 878,
          ),
          NewPRWidget(
            index: 32,
            percentage: 75,
          ),
          RouteTile(
            title: 'Crucifix Hold',
            route: AlternativeRPset(
              cbIndex1: 879,
              cbIndex2: 880,
              cbIndex3: 881,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 34,
            percentage: 60,
            cbIndex1: 882,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 34,
            percentage1: 75,
            cbIndex1: 883,
          ),
          RouteTile(
            title: 'Bulgarian Squat',
            route: AlternativeRPset(
              cbIndex1: 884,
              cbIndex2: 885,
              cbIndex3: 886,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 31,
            percentage: 60,
            cbIndex1: 887,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 31,
            percentage: 75,
            cbIndex: 888,
          ),
          NewPRWidget(
            index: 31,
            percentage: 75,
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
