import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set_without_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/new_pr_widget.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker_pr.dart';
import 'package:flutter/material.dart';

class SixDayRestPauseDaySixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Fat Grip Bicep walk',
            route: AlternativeRPset(
              cbIndex1: 465,
              cbIndex2: 466,
              cbIndex3: 467,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 44,
            percentage: 50,
            cbIndex1: 468,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 44,
            percentage1: 60,
            cbIndex1: 469,
          ),
          RouteTile(
            title: 'Fat Grip Kroc Row',
            route: AlternativeRPset(
              cbIndex1: 585,
              cbIndex2: 586,
              cbIndex3: 587,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 30,
            percentage: 50,
            cbIndex1: 588,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 30,
            percentage: 65,
            cbIndex: 589,
          ),
          NewPRWidget(
            index: 30,
            percentage: 65,
          ),
          RouteTile(
            title: 'Pull Up',
            route: AlternativeRPset(
              cbIndex1: 590,
              cbIndex2: 591,
              cbIndex3: 592,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 17,
            cbIndex1: 593,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 594,
              cbIndex2: 595,
              cbIndex3: 596,
              percentage1: 50,
              percentage2: 65,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 597,
          ),
          RouteTile(
            title: 'Ab Wheel',
            route: AlternativeRPset(
              cbIndex1: 474,
              cbIndex2: 475,
              cbIndex3: 476,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 12,
            cbIndex1: 477,
          ),
          ListTile(
            title: Center(child: Text('Sprints')),
          ),
          Divider(
            height: 0,
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
