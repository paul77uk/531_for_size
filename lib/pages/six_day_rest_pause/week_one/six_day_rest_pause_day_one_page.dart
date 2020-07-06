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
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              percentage4: 60,
              cbIndex1: 418,
              cbIndex2: 419,
              cbIndex3: 420,
              cbIndex4: 421,
              cbIndex5: 422,
              cbIndex6: 423,
              cbIndex7: 424,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 0,
            cbIndex1: 425,
            cbIndex2: 426,
            cbIndex3: 427,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 428,
            cbIndex2: 429,
            cbIndex3: 430,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 0,
            percentage: 60,
            cbIndex: 431,
          ),
          NewPRWidget(
            index: 0,
            percentage: 60,
          ),
          RouteTile(
            title: 'Clean & Press',
            route: Alternative531AndRP(
              percentage1: 65,
              percentage2: 75,
              percentage3: 85,
              percentage4: 60,
              cbIndex1: 432,
              cbIndex2: 433,
              cbIndex3: 434,
              cbIndex4: 435,
              cbIndex5: 436,
              cbIndex6: 437,
              cbIndex7: 438,
              rep1: '5',
              rep2: '5',
              rep3: '5+',
            ),
          ),
          WarmUp(
            liftIndex: 21,
            cbIndex1: 439,
            cbIndex2: 440,
            cbIndex3: 441,
          ),
          FiveThreeOnePrSet(
            title: '531',
            liftIndex: 21,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 442,
            cbIndex2: 443,
            cbIndex3: 444,
            reps1: '5',
            reps2: '5',
            reps3: '5+',
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 21,
            percentage1: 60,
            cbIndex1: 445,
          ),
          RouteTile(
            title: 'Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 446,
              cbIndex2: 447,
              cbIndex3: 448,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 19,
            percentage: 50,
            cbIndex1: 449,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 19,
            percentage: 60,
            cbIndex: 450,
          ),
          NewPRWidget(
            index: 19,
            percentage: 60,
          ),
          RouteTile(
            title: 'Farmers',
            route: AlternativeRPset(
              cbIndex1: 451,
              cbIndex2: 452,
              cbIndex3: 453,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 22,
            percentage: 50,
            cbIndex1: 454,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 22,
            percentage1: 60,
            cbIndex1: 455,
          ),
          RouteTile(
            title: 'Push Up',
            route: AlternativeRPset(
              cbIndex1: 456,
              cbIndex2: 457,
              cbIndex3: 458,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 11,
            cbIndex1: 459,
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
