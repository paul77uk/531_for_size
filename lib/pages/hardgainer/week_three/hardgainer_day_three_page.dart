import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_three/hardgainer_deadlift_data_table.dart';
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
            percentage: 75,
            title: 'Row',
            reps: '10 - 20',
            cbIndex1: 1050,
            cbIndex2: 1051,
            cbIndex3: 1052,
            cbIndex4: 1053,
            cbIndex5: 1054,
          ),
          BBB(
            title: 'Snatch',
            liftIndex: 13,
            percentage: 75,
            reps: '10 - 20',
            cbIndex1: 1060,
            cbIndex2: 1061,
            cbIndex3: 1062,
            cbIndex4: 1063,
            cbIndex5: 1064,
          ),
          BodyWeightAssistance(
            liftIndex: 8,
            title: 'Dip',
            reps: '10 - 20',
            cbIndex1: 1055,
            cbIndex2: 1056,
            cbIndex3: 1057,
            cbIndex4: 1058,
            cbIndex5: 1059,
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
