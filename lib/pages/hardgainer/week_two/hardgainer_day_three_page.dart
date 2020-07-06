import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_two/hardgainer_deadlift_data_table.dart';
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
            percentage: 70,
            title: 'Row',
            reps: '10 - 20',
            cbIndex1: 950,
            cbIndex2: 951,
            cbIndex3: 952,
            cbIndex4: 953,
            cbIndex5: 954,
          ),
          BBB(
            title: 'Snatch',
            liftIndex: 13,
            percentage: 70,
            reps: '10 - 20',
            cbIndex1: 960,
            cbIndex2: 961,
            cbIndex3: 962,
            cbIndex4: 963,
            cbIndex5: 964,
          ),
          BodyWeightAssistance(
            liftIndex: 8,
            title: 'Dip',
            reps: '10 - 20',
            cbIndex1: 955,
            cbIndex2: 956,
            cbIndex3: 957,
            cbIndex4: 958,
            cbIndex5: 959,
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
