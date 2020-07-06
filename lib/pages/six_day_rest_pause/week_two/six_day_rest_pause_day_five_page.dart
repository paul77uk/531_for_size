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
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 728,
              cbIndex2: 729,
              cbIndex3: 730,
              cbIndex4: 731,
              cbIndex5: 732,
              cbIndex6: 733,
              cbIndex7: 734,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 2,
            cbIndex1: 735,
            cbIndex2: 736,
            cbIndex3: 737,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 738,
            cbIndex2: 739,
            cbIndex3: 740,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 2,
            percentage: 70,
            cbIndex: 741,
          ),
          NewPRWidget(
            index: 2,
            percentage: 70,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 70,
              percentage2: 80,
              percentage3: 90,
              cbIndex1: 742,
              cbIndex2: 743,
              cbIndex3: 744,
              cbIndex4: 745,
              cbIndex5: 746,
              cbIndex6: 747,
              cbIndex7: 748,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 749,
            cbIndex2: 750,
            cbIndex3: 751,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 752,
            cbIndex2: 753,
            cbIndex3: 754,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 70,
            cbIndex1: 755,
          ),
          RouteTile(
            title: 'Push Out',
            route: AlternativeRPset(
              cbIndex1: 756,
              cbIndex2: 757,
              cbIndex3: 758,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 36,
            percentage: 50,
            cbIndex1: 759,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 36,
            percentage1: 70,
            cbIndex1: 760,
          ),
          RouteTile(
            title: 'Front Hold',
            route: AlternativeRPset(
              cbIndex1: 761,
              cbIndex2: 762,
              cbIndex3: 763,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 35,
            percentage: 50,
            cbIndex1: 764,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 35,
            percentage1: 70,
            cbIndex1: 765,
          ),
          RouteTile(
            title: 'Jump Squats',
            route: AlternativeRPset(
              cbIndex1: 766,
              cbIndex2: 767,
              cbIndex3: 768,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 33,
            percentage: 50,
            cbIndex1: 769,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 33,
            percentage: 70,
            cbIndex: 770,
          ),
          NewPRWidget(
            index: 33,
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
