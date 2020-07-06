import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';
import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_deadlift_data_table.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class HardgainerDayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          HardgainerDeadliftDataTable(),
          Divider(height: 0),
          BBB(
            liftIndex: 4,
            percentage: 65,
            title: 'Row',
            reps: '10 - 20',
            cbIndex1: 840,
            cbIndex2: 841,
            cbIndex3: 842,
            cbIndex4: 843,
            cbIndex5: 844,
          ),
          BBB(
            title: 'Snatch',
            liftIndex: 13,
            percentage: 65,
            reps: '10 - 20',
            cbIndex1: 850,
            cbIndex2: 851,
            cbIndex3: 852,
            cbIndex4: 853,
            cbIndex5: 854,
          ),
          BodyWeightAssistance(
            liftIndex: 8,
            title: 'Dip',
            reps: '10 - 20',
            cbIndex1: 845,
            cbIndex2: 846,
            cbIndex3: 847,
            cbIndex4: 848,
            cbIndex5: 849,
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
