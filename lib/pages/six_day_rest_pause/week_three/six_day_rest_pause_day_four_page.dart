import 'package:five_three_one_forever_app/pages/vickers_rest_pause/notes.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/alternative_light_assitance.dart';
import 'package:five_three_one_forever_app/widgets/alternative_rp_set.dart';
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
              cbIndex1: 889,
              cbIndex2: 890,
              cbIndex3: 891,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 20,
            percentage: 60,
            cbIndex1: 892,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 20,
            percentage1: 75,
            cbIndex1: 893,
          ),
          RouteTile(
            title: 'Fat Grip Curl',
            route: AlternativeRPset(
              cbIndex1: 894,
              cbIndex2: 895,
              cbIndex3: 896,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 23,
            percentage: 60,
            cbIndex1: 897,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 75,
            cbIndex1: 898,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 899,
              cbIndex2: 900,
              cbIndex3: 901,
              percentage1: 60,
              percentage2: 75,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 38,
            percentage: 60,
            cbIndex1: 902,
          ),
          OneRestPauseSet(
            percentage1: 75,
            title: 'RP Set',
            liftIndex: 38,
            cbIndex1: 903,
          ),
          RouteTile(
            title: 'Leg Raise',
            route: AlternativeLightAssistance(
              cbIndex1: 904,
              cbIndex2: 905,
              cbIndex3: 906,
            ),
          ),
          LightBodyWeightAssistance(
            title: '3 x 10',
            liftIndex: 18,
            cbIndex1: 907,
            cbIndex2: 908,
            cbIndex3: 909,
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
