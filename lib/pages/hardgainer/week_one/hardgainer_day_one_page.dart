import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';
import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_squat_data_table.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class HardgainerDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          HardgainerSquatDataTable(),
          ListTile(title: Center(child: Text('Assistance'))),
          Divider(height: 0),
          BodyWeightAssistance(
            liftIndex: 8,
            title: 'dips',
            reps: '10 - 20',
            cbIndex1: 800,
            cbIndex2: 801,
            cbIndex3: 802,
            cbIndex4: 803,
            cbIndex5: 804,
          ),
          BodyWeightAssistance(
            liftIndex: 9,
            title: 'chins',
            reps: '10 - 20',
            cbIndex1: 805,
            cbIndex2: 806,
            cbIndex3: 807,
            cbIndex4: 808,
            cbIndex5: 809,
          ),
          BodyWeightAssistance(
            liftIndex: 10,
            title: 'lunges',
            reps: '10 - 20',
            cbIndex1: 810,
            cbIndex2: 811,
            cbIndex3: 812,
            cbIndex4: 813,
            cbIndex5: 814,
          ),
          Divider(height: 0),
          RouteTile(
            title: 'Conditioning - 3-4 days of easy conditioning.',
            route: ConditioningPage(),
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(18)),
        ],
      ),
    );
  }
}
