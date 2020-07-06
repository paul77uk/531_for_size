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
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 910,
              cbIndex2: 911,
              cbIndex3: 912,
              cbIndex4: 913,
              cbIndex5: 914,
              cbIndex6: 915,
              cbIndex7: 916,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 2,
            cbIndex1: 918,
            cbIndex2: 919,
            cbIndex3: 920,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 921,
            cbIndex2: 922,
            cbIndex3: 923,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 2,
            percentage: 75,
            cbIndex: 924,
          ),
          NewPRWidget(
            index: 2,
            percentage: 75,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 925,
              cbIndex2: 926,
              cbIndex3: 927,
              cbIndex4: 928,
              cbIndex5: 929,
              cbIndex6: 930,
              cbIndex7: 931,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 932,
            cbIndex2: 933,
            cbIndex3: 934,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 932,
            cbIndex2: 933,
            cbIndex3: 934,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 75,
            cbIndex1: 935,
          ),
          RouteTile(
            title: 'Push Out',
            route: AlternativeRPset(
              cbIndex1: 936,
              cbIndex2: 937,
              cbIndex3: 938,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 36,
            percentage: 60,
            cbIndex1: 939,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 36,
            percentage1: 75,
            cbIndex1: 940,
          ),
          RouteTile(
            title: 'Front Hold',
            route: AlternativeRPset(
              cbIndex1: 941,
              cbIndex2: 942,
              cbIndex3: 943,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 35,
            percentage: 60,
            cbIndex1: 944,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 35,
            percentage1: 75,
            cbIndex1: 945,
          ),
          RouteTile(
            title: 'Jump Squats',
            route: AlternativeRPset(
              cbIndex1: 946,
              cbIndex2: 947,
              cbIndex3: 948,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 33,
            percentage: 60,
            cbIndex1: 949,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 33,
            percentage: 75,
            cbIndex: 950,
          ),
          NewPRWidget(
            index: 33,
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
