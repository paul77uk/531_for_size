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
              cbIndex1: 522,
              cbIndex2: 523,
              cbIndex3: 524,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 20,
            percentage: 50,
            cbIndex1: 525,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 20,
            percentage1: 60,
            cbIndex1: 526,
          ),
          RouteTile(
            title: 'Fat Grip Curl',
            route: AlternativeRPset(
              cbIndex1: 527,
              cbIndex2: 528,
              cbIndex3: 529,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          OneSetWarmUp(
            title: 'Warm Up',
            liftIndex: 23,
            percentage: 50,
            cbIndex1: 530,
          ),
          OneRestPauseSet(
            title: 'RP Set',
            liftIndex: 23,
            percentage1: 60,
            cbIndex1: 531,
          ),
          RouteTile(
            title: 'Dips',
            route: AlternativeRPset(
              cbIndex1: 532,
              cbIndex2: 533,
              cbIndex3: 534,
              percentage1: 50,
              percentage2: 60,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 8,
            cbIndex1: 535,
          ),
          RouteTile(
            title: 'Leg Raise',
            route: AlternativeRPset(
              cbIndex1: 536,
              cbIndex2: 537,
              cbIndex3: 538,
            ),
          ),
          BodyWeightRestPauseSetWithoutWarmUp(
            title: 'RP Set',
            liftIndex: 18,
            cbIndex1: 539,
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
