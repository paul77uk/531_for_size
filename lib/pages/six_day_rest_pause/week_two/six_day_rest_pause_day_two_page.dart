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
              cbIndex1: 645,
              cbIndex2: 646,
              cbIndex3: 647,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 29,
            percentage: 50,
            cbIndex1: 648,
          ),
          WidowMakerPr(
            title: 'WidowMaker',
            liftIndex: 29,
            percentage: 70,
            cbIndex: 649,
          ),
          NewPRWidget(
            index: 29,
            percentage: 70,
          ),
          RouteTile(
            title: 'Curl',
            route: AlternativeRPset(
              cbIndex1: 650,
              cbIndex2: 651,
              cbIndex3: 652,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 5,
            percentage: 50,
            cbIndex1: 653,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 5,
            percentage1: 70,
            cbIndex1: 654,
          ),
          RouteTile(
            title: 'Close Grip Bench',
            route: AlternativeRPset(
              cbIndex1: 655,
              cbIndex2: 656,
              cbIndex3: 657,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 14,
            percentage: 50,
            cbIndex1: 655,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            percentage1: 65,
            liftIndex: 14,
            cbIndex1: 658,
          ),
          RouteTile(
            title: 'Ab Wheel',
            route: AlternativeLightAssistance(
              cbIndex1: 659,
              cbIndex2: 660,
              cbIndex3: 661,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 12,
            cbIndex1: 662,
            cbIndex2: 663,
            cbIndex3: 664,
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
