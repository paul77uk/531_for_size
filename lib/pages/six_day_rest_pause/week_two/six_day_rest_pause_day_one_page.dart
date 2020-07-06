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
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 603,
              cbIndex2: 604,
              cbIndex3: 605,
              cbIndex4: 606,
              cbIndex5: 607,
              cbIndex6: 608,
              cbIndex7: 609,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 610,
            cbIndex2: 611,
            cbIndex3: 612,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 613,
            cbIndex2: 614,
            cbIndex3: 615,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 0,
            percentage: 70,
            cbIndex: 616,
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
              cbIndex1: 617,
              cbIndex2: 618,
              cbIndex3: 619,
              cbIndex4: 620,
              cbIndex5: 621,
              cbIndex6: 622,
              cbIndex7: 623,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 624,
            cbIndex2: 625,
            cbIndex3: 626,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 24,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 627,
            cbIndex2: 628,
            cbIndex3: 629,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 24,
            percentage1: 70,
            cbIndex1: 630,
          ),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 631,
              cbIndex2: 632,
              cbIndex3: 633,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 50,
            cbIndex1: 634,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 70,
            cbIndex: 635,
          ),
          NewPRWidget(
            index: 30,
            percentage: 70,
          ),
          RouteTile(
            title: 'Farmers',
            route: AlternativeRPset(
              cbIndex1: 636,
              cbIndex2: 637,
              cbIndex3: 638,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 22,
            percentage: 50,
            cbIndex1: 639,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 22,
            percentage1: 70,
            cbIndex1: 640,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 641,
              cbIndex2: 642,
              cbIndex3: 643,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 644,
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
