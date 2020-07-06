import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_light_assitance.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set_without_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
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
              cbIndex1: 831,
              cbIndex2: 832,
              cbIndex3: 833,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 29,
            percentage: 60,
            cbIndex1: 834,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 29,
            percentage: 75,
            cbIndex: 835,
          ),
          NewPRWidget(
            index: 29,
            percentage: 75,
          ),
          RouteTile(
            title: 'Curl',
            route: AlternativeRPset(
              cbIndex1: 836,
              cbIndex2: 837,
              cbIndex3: 838,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 5,
            percentage: 60,
            cbIndex1: 839,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 75,
            cbIndex1: 840,
          ),
          RouteTile(
            title: 'Close Grip Bench',
            route: AlternativeRPset(
              cbIndex1: 841,
              cbIndex2: 842,
              cbIndex3: 843,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 14,
            percentage: 60,
            cbIndex1: 844,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            percentage1: 75,
            liftIndex: 14,
            cbIndex1: 845,
          ),
          RouteTile(
            title: 'Ab Wheel',
            route: AlternativeLightAssistance(
              cbIndex1: 846,
              cbIndex2: 847,
              cbIndex3: 848,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 12,
            cbIndex1: 849,
            cbIndex2: 850,
            cbIndex3: 851,
          ),
          ListTile(
            title: Center(child: Text('Running')),
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
