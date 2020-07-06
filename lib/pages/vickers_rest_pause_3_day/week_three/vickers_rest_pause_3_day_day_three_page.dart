import 'package:five_three_one_forever_app/pages/conditioning.dart';
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
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 372,
              cbIndex2: 373,
              cbIndex3: 374,
              cbIndex4: 375,
              cbIndex5: 376,
              cbIndex6: 377,
              cbIndex7: 378,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 2,
            cbIndex1: 379,
            cbIndex2: 380,
            cbIndex3: 381,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 2,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 382,
            cbIndex2: 383,
            cbIndex3: 384,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 2,
            percentage: 75,
            cbIndex: 385,
          ),
          NewPRWidget(
            index: 2,
            percentage: 75,
          ),
          RouteTile(
            title: 'Press',
            route: Alternative531AndRP(
              percentage1: 75,
              percentage2: 85,
              percentage3: 95,
              cbIndex1: 386,
              cbIndex2: 387,
              cbIndex3: 388,
              cbIndex4: 389,
              cbIndex5: 390,
              cbIndex6: 391,
              cbIndex7: 392,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 3,
            cbIndex1: 393,
            cbIndex2: 394,
            cbIndex3: 395,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 396,
            cbIndex2: 397,
            cbIndex3: 398,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 3,
            percentage1: 75,
            cbIndex1: 399,
          ),
          RouteTile(
            title: 'Fat Grip Farmers',
            route: AlternativeRPset(
              cbIndex1: 400,
              cbIndex2: 401,
              cbIndex3: 402,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 20,
            percentage: 60,
            cbIndex1: 403,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 20,
            percentage1: 75,
            cbIndex1: 404,
          ),
          RouteTile(
            title: 'Fat Grip Yates Row',
            route: AlternativeRPset(
              cbIndex1: 405,
              cbIndex2: 406,
              cbIndex3: 407,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 32,
            percentage: 60,
            cbIndex1: 75,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 32,
            percentage: 75,
            cbIndex: 408,
          ),
          NewPRWidget(
            index: 32,
            percentage: 75,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 409,
              cbIndex2: 410,
              cbIndex3: 411,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 412,
          ),
          RouteTile(
            title: 'Jump Squats',
            route: AlternativeRPset(
              cbIndex1: 413,
              cbIndex2: 414,
              cbIndex3: 415,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 33,
            percentage: 60,
            cbIndex1: 416,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 33,
            percentage: 75,
            cbIndex: 417,
          ),
          NewPRWidget(
            index: 33,
            percentage: 75,
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
