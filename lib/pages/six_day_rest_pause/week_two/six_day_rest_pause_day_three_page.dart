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
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 665,
              cbIndex2: 666,
              cbIndex3: 667,
              cbIndex4: 668,
              cbIndex5: 669,
              cbIndex6: 670,
              cbIndex7: 671,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 1,
            cbIndex1: 672,
            cbIndex2: 673,
            cbIndex3: 674,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 1,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 675,
            cbIndex2: 676,
            cbIndex3: 677,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 1,
            percentage1: 70,
            cbIndex1: 678,
          ),
          RouteTile(
            title: 'Press',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 679,
              cbIndex2: 680,
              cbIndex3: 681,
              cbIndex4: 682,
              cbIndex5: 683,
              cbIndex6: 684,
              cbIndex7: 685,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 3,
            cbIndex1: 686,
            cbIndex2: 687,
            cbIndex3: 688,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 689,
            cbIndex2: 690,
            cbIndex3: 691,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 70,
            cbIndex1: 692,
          ),
          RouteTile(
            title: 'Fat Grip Yates Row',
            route: AlternativeRPset(
              cbIndex1: 693,
              cbIndex2: 694,
              cbIndex3: 695,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 32,
            percentage: 50,
            cbIndex1: 696,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 32,
            percentage: 70,
            cbIndex: 697,
          ),
          NewPRWidget(
            index: 32,
            percentage: 70,
          ),
          RouteTile(
            title: 'Crucifix Hold',
            route: AlternativeRPset(
              cbIndex1: 698,
              cbIndex2: 699,
              cbIndex3: 700,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 34,
            percentage: 50,
            cbIndex1: 701,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 34,
            percentage1: 65,
            cbIndex1: 702,
          ),
          RouteTile(
            title: 'Bulgarian Squat',
            route: AlternativeRPset(
              cbIndex1: 703,
              cbIndex2: 704,
              cbIndex3: 705,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 31,
            percentage: 50,
            cbIndex1: 706,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 31,
            percentage: 70,
            cbIndex: 707,
          ),
          NewPRWidget(
            index: 31,
            percentage: 70,
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
