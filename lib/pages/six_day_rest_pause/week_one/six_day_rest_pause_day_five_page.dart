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

class SixDayRestPauseDayFivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Deadlift',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              percentage4: 60,
              cbIndex1: 542,
              cbIndex2: 543,
              cbIndex3: 544,
              cbIndex4: 545,
              cbIndex5: 546,
              cbIndex6: 547,
              cbIndex7: 548,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 2,
            cbIndex1: 549,
            cbIndex2: 550,
            cbIndex3: 551,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 552,
            cbIndex2: 553,
            cbIndex3: 554,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 2,
            percentage: 65,
            cbIndex: 555,
          ),
          NewPRWidget(
            index: 2,
            percentage: 65,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              percentage4: 65,
              cbIndex1: 556,
              cbIndex2: 557,
              cbIndex3: 558,
              cbIndex4: 559,
              cbIndex5: 560,
              cbIndex6: 561,
              cbIndex7: 562,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 563,
            cbIndex2: 564,
            cbIndex3: 565,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 566,
            cbIndex2: 567,
            cbIndex3: 568,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 65,
            cbIndex1: 569,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 570,
              cbIndex2: 571,
              cbIndex3: 572,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 574,
          ),
          RouteTile(
            title: 'Front Hold',
            route: AlternativeRPset(
              cbIndex1: 575,
              cbIndex2: 576,
              cbIndex3: 577,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 35,
            percentage: 50,
            cbIndex1: 578,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 35,
            percentage1: 65,
            cbIndex1: 579,
          ),
          RouteTile(
            title: 'Bulgarian Squats',
            route: AlternativeRPset(
              cbIndex1: 580,
              cbIndex2: 581,
              cbIndex3: 582,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 31,
            percentage: 50,
            cbIndex1: 583,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 31,
            percentage: 65,
            cbIndex: 584,
          ),
          NewPRWidget(
            index: 33,
            percentage: 65,
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
