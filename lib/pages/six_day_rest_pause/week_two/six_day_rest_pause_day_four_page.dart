import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_light_assitance.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_rp_set_without_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/light_bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/one_rp_set.dart';
import 'package:five_three_one_forever_app/widgets/one_set_warm_up.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class SixDayRestPauseDayFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          RouteTile(
            title: 'Fat Grip Farmers',
            route: AlternativeRPset(
              cbIndex1: 708,
              cbIndex2: 709,
              cbIndex3: 710,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 20,
            percentage: 50,
            cbIndex1: 711,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 20,
            percentage1: 70,
            cbIndex1: 712,
          ),
          RouteTile(
            title: 'Fat Grip Curl',
            route: AlternativeRPset(
              cbIndex1: 713,
              cbIndex2: 714,
              cbIndex3: 715,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 23,
            percentage: 50,
            cbIndex1: 716,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 70,
            cbIndex1: 717,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 718,
              cbIndex2: 719,
              cbIndex3: 720,
              percentage1: 50,
              percentage2: 70,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 8,
            percentage: 50,
            cbIndex1: 718,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            percentage1: 70,
            liftIndex: 8,
            cbIndex1: 721,
          ),
          RouteTile(
            title: 'Leg Raise',
            route: AlternativeLightAssistance(
              cbIndex1: 722,
              cbIndex2: 723,
              cbIndex3: 724,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 18,
            cbIndex1: 725,
            cbIndex2: 726,
            cbIndex3: 727,
          ),
          ListTile(
            title: Center(child: Text('Hill Sprints')),
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
