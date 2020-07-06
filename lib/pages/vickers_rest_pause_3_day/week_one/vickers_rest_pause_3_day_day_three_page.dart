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

class VickersRestPause3DayDayThreePage extends StatelessWidget {
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
              cbIndex1: 94,
              cbIndex2: 95,
              cbIndex3: 96,
              cbIndex4: 97,
              cbIndex5: 98,
              cbIndex6: 99,
              cbIndex7: 100,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 2,
            cbIndex1: 101,
            cbIndex2: 102,
            cbIndex3: 103,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 104,
            cbIndex2: 105,
            cbIndex3: 106,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 2,
            percentage: 65,
            cbIndex: 107,
          ),
          NewPRWidget(
            index: 2,
            percentage: 65,
          ),
          RouteTile(
            title: 'Press',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              cbIndex1: 108,
              cbIndex2: 109,
              cbIndex3: 110,
              cbIndex4: 111,
              cbIndex5: 112,
              cbIndex6: 113,
              cbIndex7: 114,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 3,
            cbIndex1: 115,
            cbIndex2: 116,
            cbIndex3: 117,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 118,
            cbIndex2: 119,
            cbIndex3: 120,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 65,
            cbIndex1: 121,
          ),
          RouteTile(
            title: 'Fat Grip Farmers',
            route: AlternativeRPset(
              cbIndex1: 122,
              cbIndex2: 123,
              cbIndex3: 124,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 20,
            percentage: 50,
            cbIndex1: 125,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 20,
            percentage1: 65,
            cbIndex1: 126,
          ),
          RouteTile(
            title: 'Fat Grip Yates Row',
            route: AlternativeRPset(
              cbIndex1: 127,
              cbIndex2: 128,
              cbIndex3: 129,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 32,
            percentage: 50,
            cbIndex1: 130,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 32,
            percentage: 65,
            cbIndex: 131,
          ),
          NewPRWidget(
            index: 32,
            percentage: 65,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 132,
              cbIndex2: 133,
              cbIndex3: 134,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 135,
          ),
          RouteTile(
            title: 'Jump Squats',
            route: AlternativeRPset(
              cbIndex1: 136,
              cbIndex2: 137,
              cbIndex3: 138,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 33,
            percentage: 50,
            cbIndex1: 139,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 33,
            percentage: 65,
            cbIndex: 139,
          ),
          NewPRWidget(
            index: 33,
            percentage: 65,
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
