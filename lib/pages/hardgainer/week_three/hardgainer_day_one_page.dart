import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_three/hardgainer_squat_data_table.dart';
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
            cbIndex1: 1003,
            cbIndex2: 1004,
            cbIndex3: 1005,
            cbIndex4: 1006,
            cbIndex5: 1007,
          ),
          BodyWeightAssistance(
            liftIndex: 9,
            title: 'chins',
            reps: '10 - 20',
            cbIndex1: 1008,
            cbIndex2: 1009,
            cbIndex3: 1010,
            cbIndex4: 1011,
            cbIndex5: 1012,
          ),
          BodyWeightAssistance(
            liftIndex: 10,
            title: 'lunges',
            reps: '10 - 20',
            cbIndex1: 1013,
            cbIndex2: 1014,
            cbIndex3: 1015,
            cbIndex4: 1016,
            cbIndex5: 1017,
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
