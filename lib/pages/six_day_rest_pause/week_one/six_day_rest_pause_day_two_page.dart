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

class SixDayRestPauseDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Fat Grip Deadlift',
            route: AlternativeRPset(
              cbIndex1: 460,
              cbIndex2: 461,
              cbIndex3: 462,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 29,
            percentage: 50,
            cbIndex1: 463,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 29,
            percentage: 60,
            cbIndex: 464,
          ),
          NewPRWidget(
            index: 29,
            percentage: 60,
          ),
          RouteTile(
            title: 'Curl',
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
            liftIndex: 5,
            percentage: 50,
            cbIndex1: 468,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 60,
            cbIndex1: 469,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 470,
              cbIndex2: 471,
              cbIndex3: 472,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 473,
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
            title: Center(child: Text('Running/ Sprints')),
            subtitle: Center(child: Text('1 - 3 miles')),
          ),
          Divider(),
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
